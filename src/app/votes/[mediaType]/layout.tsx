import { faFilm, faGamepad, faTv } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { MediaTypeButton } from "~/app/_components/media-type-button";
import { narutoIcon } from "~/app/_icons/naruto";
import { type MediaType } from "~/app/_models/works";
import React from "react";

export default async function VotesPageLayout({
  children,
  params,
}: {
  children: React.ReactNode;
  params: Promise<{ mediaType: MediaType }>;
}) {
  const { mediaType } = await params;

  return (
    <div className="flex-1 px-4 py-8 sm:px-6 lg:px-8">
      <div className="relative">
        <div className="flex flex-col items-center justify-center gap-4">
          <div className="text-center">
            <h1 className="text-3xl font-bold text-gray-900 dark:text-white">
              I voti della community
            </h1>
            <p className="mt-2 text-xl text-gray-600 dark:text-gray-300">
              Visualizza le classifiche dei voti della community
            </p>
          </div>

          <div className="mb-8 flex justify-center">
            <div className="flex space-x-2">
              <MediaTypeButton
                mediaTypeTitle={"Film"}
                href="/votes/movie"
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
                href="/votes/tvshow"
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
                href="/votes/anime"
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
                href="/votes/game"
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

          <div className="mx-auto w-full max-w-7xl px-4  sm:px-6 lg:px-8">
            {children}
          </div>
          
        </div>
      </div>
    </div>
  );
}
