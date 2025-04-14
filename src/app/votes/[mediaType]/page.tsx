import { HydrateClient } from "~/trpc/server";
import { MediaTypeButton } from "../../_components/media-type-button";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faFilm, faGamepad, faTv } from "@fortawesome/free-solid-svg-icons";
import { type MediaType } from "~/app/models/types";
import RatedWorks from "~/app/_components/rated-works";
import { Suspense } from "react";
import Loading from "./loading";
import { narutoIcon } from "~/app/_icons/naruto";

export default async function Votes({
  params,
}: {
  params: Promise<{ mediaType: MediaType }>;
}) {
  const { mediaType } = await params;

  return (
    <HydrateClient>
      {/* Pulsanti di selezione del tipo di media */}
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

      {/* Tabella dei voti */}
      <div className="w-full max-w-6xl">
        <Suspense fallback={<Loading />}>
          <RatedWorks mediaType={mediaType} />
        </Suspense>
      </div>
    </HydrateClient>
  );
}
