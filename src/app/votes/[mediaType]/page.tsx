import { HydrateClient } from "~/trpc/server";
import { VotesContent } from "~/app/_components/votes-content";
import { MediaTypeButton } from "../../_components/media-type-button";
import Image from "next/image";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faFilm, faGamepad, faTv } from "@fortawesome/free-solid-svg-icons";
import { MediaType } from "~/app/models/types";
import { getMediaTitle } from "~/app/_utils/media-type";
import RatedWorks from "~/app/_components/rated-works";
import { Suspense } from "react";
import Loading from "./loading";

export default async function Votes({
  params,
}: {
  params: Promise<{ mediaType: MediaType }>;
}) {
  const { mediaType } = await params;
  const mediaTypeTitle = await getMediaTitle(mediaType);

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
              <Image
                src="/naruto-119-svgrepo-com.svg"
                alt="Naruto Icon"
                width={15}
                height={15}
                className="order-1 brightness-0 invert filter sm:order-0 xl:mr-2"
                style={{
                  filter:
                    mediaType === "anime"
                      ? "brightness(0) invert(1)"
                      : "brightness(0) opacity(0.1)",
                }}
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
