"use client";

import React, {
  type ReactNode,
  useCallback,
  useEffect,
  useMemo,
  useState,
} from "react";
import { Work } from "./work";
import { type Movie, type MoviesResponse } from "../api/movies/route";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faArrowLeft,
  faMagnifyingGlass,
} from "@fortawesome/free-solid-svg-icons";
import Reset from "./reset-search";
import { type MediaType } from "~/app/models/types";
import { useDebounce } from "~/app/_hooks/debouce";
import RatingDialog from "~/app/_components/rating-dialog";
import {getRate, setRate} from "~/server/actions/rating";

type SearchProps = {
  onSearchFocusAction?: () => void;
  onSearchBlurAction?: () => void;
  mediaType: MediaType;
  mediaTypeTitle: string;
  headerContent?: ReactNode;
  isSearchFocused?: boolean; // Nuova prop per controllare lo stato dall'esterno
};

export function Search({
  onSearchFocusAction,
  onSearchBlurAction,
  mediaType,
  mediaTypeTitle,
  headerContent,
  isSearchFocused: externalIsSearchFocused,
}: SearchProps) {
  const searchInitialState = useMemo(
    () => ({
      page: 0,
      results: [],
      total_pages: 0,
      total_results: 0,
    }),
    [],
  );

  const [searchText, setSearchText] = useState("");
  const [searching, setIsSearching] = useState(false);
  const [searchResult, setSearchResult] = useState<MoviesResponse>(searchInitialState);
  const [hasSearched, setHasSearched] = useState(false);
  const [internalIsSearchFocused, setInternalIsSearchFocused] = useState(false);
  const isSearchFocused = externalIsSearchFocused ?? internalIsSearchFocused;
  const [isMobile, setIsMobile] = useState(false);
  const [voting, setVoting] = useState(false);
  const [selectedWork, setSelectedWork] = useState<Movie | null>(null);
  const [selectedWorkCurrentRate, setSelectedWorkCurrentRate] = useState<number>(0);

  const handleVoting = async (work: Movie) => {
    const currentRate = await getRate(work);
    setVoting(true);
    setSelectedWork(work);
    setSelectedWorkCurrentRate(currentRate)
  };

  // Check if we're on mobile
  useEffect(() => {
    const checkIfMobile = () => {
      setIsMobile(window.innerWidth < 768);
    };

    // Initial check
    checkIfMobile();

    // Set up listener for resize
    window.addEventListener("resize", checkIfMobile);

    // Handle back button press
    const handlePopState = () => {
      if (isSearchFocused) {
        if (externalIsSearchFocused === undefined) {
          setInternalIsSearchFocused(false);
        }
        onSearchBlurAction?.();
      }
    };

    window.addEventListener("popstate", handlePopState);

    return () => {
      window.removeEventListener("resize", checkIfMobile);
      window.removeEventListener("popstate", handlePopState);
    };
  }, [isSearchFocused, onSearchBlurAction, externalIsSearchFocused]);

  const handleSearchFocus = useCallback(() => {
    if (isMobile) {
      if (externalIsSearchFocused === undefined) {
        setInternalIsSearchFocused(true);
      }
      onSearchFocusAction?.();
      // Add history entry to handle back button
      window.history.pushState({ searchFocused: true }, "");
    }
  }, [isMobile, onSearchFocusAction, externalIsSearchFocused]);

  const handleExitSearchFocus = useCallback(() => {
    if (isSearchFocused) {
      if (externalIsSearchFocused === undefined) {
        setInternalIsSearchFocused(false);
      }
      onSearchBlurAction?.();
      window.history.back(); // This will trigger the popstate event handler
    }
  }, [isSearchFocused, onSearchBlurAction, externalIsSearchFocused]);

  const handleSearch = useCallback(() => {
    if (!searchText.trim()) {
      // Clear results if search text is empty
      setSearchResult(searchInitialState);
      return;
    }

    setHasSearched(true);
    setIsSearching(true);

    if (mediaType === "movie") {
      fetch(`/api/movies?query=${encodeURIComponent(searchText)}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Failed to search movies");
          }
          return response.json();
        })
        .then((data: MoviesResponse) => {
          setSearchResult(data);
        })
        .catch((error) => {
          console.error("Error searching movies:", error);
          setSearchResult(searchInitialState);
        })
        .finally(() => {
          setIsSearching(false);
        });
    } else if (mediaType === "tvshow" || mediaType === "anime") {
      fetch(
        `/api/tvshow?query=${encodeURIComponent(searchText)}&type=${mediaType}`,
      )
        .then((response) => {
          if (!response.ok) {
            throw new Error("Failed to search serie TV");
          }
          return response.json();
        })
        .then((data: MoviesResponse) => {
          setSearchResult(data);
        })
        .catch((error) => {
          console.error("Error searching serie TV:", error);
          setSearchResult(searchInitialState);
        })
        .finally(() => {
          setIsSearching(false);
        });
    } else if (mediaType === "game") {
      setIsSearching(false);
    }
  }, [searchText, mediaType, searchInitialState]);

  // Debounced search function - triggers search after 500ms of typing inactivity
  const debouncedSearch = useDebounce(handleSearch, 500);

  // Trigger search when text changes
  useEffect(() => {
    debouncedSearch();
  }, [searchText, debouncedSearch]);

  // Handle text input change
  const handleTextChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setSearchText(e.target.value);
  };

  // Funzione per resettare la ricerca
  const handleReset = useCallback(() => {
    setSearchText("");
    setSearchResult(searchInitialState);
    setHasSearched(false);
  }, [searchInitialState]);

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
            {searching && (
              <div className="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-3">
                <div className="h-4 w-4 animate-spin rounded-full border-2 border-gray-300 border-t-indigo-600"></div>
              </div>
            )}
            <input
              type="text"
              placeholder={`Cerca ${mediaTypeTitle}...`}
              value={searchText}
              onChange={handleTextChange}
              onFocus={handleSearchFocus}
              onBlur={onSearchBlurAction}
              className="focus:ring-opacity-50 w-full rounded-lg border border-gray-300 bg-white px-4 py-3 pl-10 text-gray-700 shadow-sm transition-all focus:border-indigo-500 focus:ring focus:ring-indigo-200 dark:border-gray-700 dark:bg-gray-800 dark:text-white"
            />
            {searchText.length > 0 && <Reset onClick={handleReset} />}
          </div>
        </div>
      </div>

      {/* Risultati della ricerca */}
      {searchResult.results.length > 0 && (
        <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 md:gap-6 lg:grid-cols-6">
          {searchResult.results.map((result: Movie) => (
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
      {hasSearched &&
        searchResult.results.length === 0 &&
        searchText &&
        !searching && (
          <div className="py-12 text-center">
            <p className="text-xl text-gray-600 dark:text-gray-400">
              Nessun risultato trovato per &#34;{searchText}&#34;
            </p>
          </div>
        )}

      {voting && selectedWork && (
        <RatingDialog
          currentRate={selectedWorkCurrentRate}
          onConfirm={(rate) => setRate(selectedWork, rate, mediaType)}
          onClose={() => setVoting(false)}
          data={selectedWork}
          mediaType={mediaType}
        />
      )}
    </>
  );
}
