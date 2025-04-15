import { HydrateClient } from "~/trpc/server";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faFilm, faGamepad, faTv } from "@fortawesome/free-solid-svg-icons";
import { type MediaType } from "~/app/_models/works";
import React from "react";
import { Search } from "~/app/_components/search";
import { narutoIcon } from "~/app/_icons/naruto";
import { MediaTypeButton } from "~/app/_components/media-type-button";
import { getMediaTitle } from "~/app/_utils/media-type";
import { QueryClient } from "@tanstack/react-query";
import { fetchGenres } from "~/app/_utils/tmdb";

async function Header({ mediaType }: { mediaType: MediaType }) {
  const mediaTypeTitle = await getMediaTitle(mediaType);

  return (
    <>
      {/* Header con titolo */}
      <div className="mt-20 mb-8 text-center">
        <h1 className="mb-2 text-4xl font-extrabold text-gray-900 dark:text-white">
          <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-transparent dark:from-blue-300 dark:to-indigo-500">
            {mediaTypeTitle}
          </span>
        </h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          Scopri e vota i tuoi preferiti
        </p>
      </div>

      {/* Pulsanti di selezione del tipo di media */}
      <div className="mb-8 flex justify-center">
        <div className="flex space-x-2">
          <MediaTypeButton
            mediaTypeTitle={"Film"}
            href="/search/movie"
            active={mediaType === "movie"}
            icon={
              <FontAwesomeIcon
                icon={faFilm}
                className="order-1 h-5 w-5 sm:order-0"
              />
            }
          />
          <MediaTypeButton
            mediaTypeTitle={"Serie TV"}
            href="/search/tvshow"
            active={mediaType === "tvshow"}
            icon={
              <FontAwesomeIcon
                icon={faTv}
                className="order-1 h-5 w-5 sm:order-0"
              />
            }
          />
          <MediaTypeButton
            mediaTypeTitle={"Anime"}
            href="/search/anime"
            active={mediaType === "anime"}
            icon={
              <FontAwesomeIcon
                icon={narutoIcon}
                className="order-1 h-5 w-5 sm:order-0"
              />
            }
          />
          <MediaTypeButton
            mediaTypeTitle={"Videogiochi"}
            href="/search/game"
            active={mediaType === "game"}
            icon={
              <FontAwesomeIcon
                icon={faGamepad}
                className="order-1 h-5 w-5 sm:order-0"
              />
            }
          />
        </div>
      </div>
    </>
  );
}

export default async function SearchPage({
  params,
}: {
  params: Promise<{ mediaType: MediaType }>;
}) {
  const { mediaType } = await params;
  const mediaTypeTitle = await getMediaTitle(mediaType);

  const queryClient = new QueryClient();

  await queryClient.prefetchQuery({
    queryKey: ["genres", mediaType],
    queryFn: () => fetchGenres(mediaType),
  });

  return (
    <HydrateClient>
      <div className="flex-1">
        <div className="relative">
          <div className="flex flex-col items-center justify-center gap-4">
            <div className="mx-auto w-full max-w-7xl px-4 py-8 sm:px-6 lg:px-8">
              <Search
                mediaType={mediaType}
                mediaTypeTitle={mediaTypeTitle}
                headerContent={<Header mediaType={mediaType} />}
              />
            </div>
          </div>
        </div>
      </div>
    </HydrateClient>
  );
}
