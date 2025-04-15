"use client";

import React, { type ReactNode, useState } from "react";
import { Work } from "./work";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faArrowLeft,
  faMagnifyingGlass,
} from "@fortawesome/free-solid-svg-icons";
import Reset from "./reset-search";
import { useDebounce } from "~/app/_hooks/debouce";
import { LoadingSearch } from "~/app/_components/loading-search";
import RatingDialogContent from "~/app/_components/rating-dialog-content";
import Dialog from "~/app/_components/ui/dialog";
import { useQuery } from "@tanstack/react-query";
import { useMobile } from "~/app/_hooks/mobile";
import { fetchWorks } from "~/app/_utils/tmdb";
import { type MediaType, type WorkModel } from "~/app/_models/works";

type SearchProps = {
  mediaType: MediaType;
  mediaTypeTitle: string;
  headerContent?: ReactNode;
};

export function Search({
  mediaType,
  mediaTypeTitle,
  headerContent,
}: SearchProps) {
  const [searchText, setSearchText] = useState("");
  const [voting, setVoting] = useState(false);
  const [selectedWork, setSelectedWork] = useState<WorkModel | null>(null);
  const deferredSearchText = useDebounce(searchText, 500);
  const { isSearchFocused, handleSearchFocus, handleExitSearchFocus } =
    useMobile();

  const { isLoading, data, isFetched } = useQuery<WorkModel[]>({
    queryKey: [mediaType, deferredSearchText],
    queryFn: () => fetchWorks(mediaType, deferredSearchText),
    enabled: !!deferredSearchText,
  });

  const handleVoting = async (work: WorkModel) => {
    setVoting(true);
    setSelectedWork(work);
  };

  return (
    <>
      {/* Header content che viene mostrato solo quando non c'è il focus sulla ricerca */}
      {headerContent && !isSearchFocused && (
        <div className="header-content">{headerContent}</div>
      )}

      {/* Barra di ricerca */}
      <div
        className={`${
          isSearchFocused
            ? "fixed top-0 right-0 left-0 z-50 bg-white px-4 py-3 dark:bg-gray-900"
            : "mx-auto mb-12 max-w-3xl"
        }`}
      >
        <div className="flex items-center">
          {isSearchFocused && (
            <button
              type="button"
              onClick={handleExitSearchFocus}
              className="mr-2 flex items-center p-2 text-gray-600"
            >
              <FontAwesomeIcon icon={faArrowLeft} className="h-5 w-5" />
            </button>
          )}
          <div className="relative flex-grow">
            <div className="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
              <FontAwesomeIcon
                icon={faMagnifyingGlass}
                className="h-5 w-5 text-gray-400"
              />
            </div>
            {isLoading && (
              <div className="pointer-events-none absolute inset-y-0 right-8 flex items-center pr-3">
                <div className="h-4 w-4 animate-spin rounded-full border-2 border-gray-300 border-t-indigo-600"></div>
              </div>
            )}
            <input
              type="text"
              placeholder={`Cerca ${mediaTypeTitle}...`}
              value={searchText}
              onChange={(e) => setSearchText(e.target.value)}
              onFocus={handleSearchFocus}
              className="focus:ring-opacity-50 w-full rounded-lg border border-gray-300 bg-white px-4 py-3 pl-10 text-gray-700 shadow-sm transition-all focus:border-indigo-500 focus:ring focus:ring-indigo-200 dark:border-gray-700 dark:bg-gray-800 dark:text-white"
            />
            {searchText.length > 0 && (
              <Reset onClick={() => setSearchText("")} />
            )}
          </div>
        </div>
      </div>

      {isLoading && <LoadingSearch />}

      {/* Risultati della ricerca */}
      {!isLoading && (data ?? []).length > 0 && (
        <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 md:gap-6 lg:grid-cols-6">
          {data?.map((result: WorkModel) => (
            <div
              className="transition ease-in-out hover:z-10 hover:scale-105"
              key={result.id}
            >
              <Work
                data={result}
                mediaType={mediaType}
                onClickVoting={() => handleVoting(result)}
              />
            </div>
          ))}
        </div>
      )}

      {/* Messaggio quando non ci sono risultati */}
      {isFetched && data?.length === 0 && !isLoading && (
        <div className="py-12 text-center">
          <p className="text-xl text-gray-600 dark:text-gray-400">
            Nessun risultato trovato per &#34;{searchText}&#34;
          </p>
        </div>
      )}

      <Dialog
        bgClassName="bg-gray-800"
        isOpen={voting && !!selectedWork}
        onClose={() => setVoting(false)}
      >
        {selectedWork && (
          <RatingDialogContent
            mediaType={mediaType}
            onClose={() => setVoting(false)}
            data={selectedWork}
          />
        )}
      </Dialog>
    </>
  );
}
