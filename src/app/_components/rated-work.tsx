import { type Work } from "@prisma/client";
import { type MediaType, type WorkModel } from "~/app/_models/works";
import Image from "next/image";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faFilm } from "@fortawesome/free-solid-svg-icons";
import { Rating } from "~/app/_components/rating";
import RatingButton from "./rating-button";
import RatingDialog from "./rating-dialog";
import { useState } from "react";
import { api } from "~/trpc/react";
import { useQuery } from "@tanstack/react-query";
import { StaleTimes } from "~/app/_utils/stale-times";

type EnrichedWork = Work & {
  imageUrl: string | null;
  averageRating: number | null;
  ratingsCount: number | null;
  myRating: number | null;
  releaseDate: Date | null;
  director: string | null;
};

type RatedWorkProps = {
  mediaType: MediaType;
  work: EnrichedWork;
  index: number;
};

export default function RatedWork({ mediaType, work, index }: RatedWorkProps) {
  const [voting, setVoting] = useState(false);

  const { isLoading: trpcLoading, data } =
    api.workRating.getByExternalId.useQuery(work.externalId);

  const { isLoading: fetchLoading, data: workModel } = useQuery<WorkModel>({
    queryKey: ["work", work.id],
    queryFn: () =>
      fetch(`/api/details/${mediaType}?id=${work.externalId}`).then((res) =>
        res.json(),
      ),
    staleTime: StaleTimes.ONE_WEEK,
  });

  const isLoading = trpcLoading || fetchLoading;

  return (
    <div className="flex border-b border-gray-700 p-4 transition-colors hover:bg-gray-800/30">
      <div className="relative mr-4 flex-shrink-0">
        <span className="absolute top-0 left-0 bg-black/60 px-1 text-xs font-medium text-white">
          {index + 1}.
        </span>
        {work.imageUrl ? (
          <Image
            src={
              mediaType === "game"
                ? work.imageUrl
                : `https://image.tmdb.org/t/p/w500${work.imageUrl}`
            }
            alt={work.title ?? ""}
            className="h-24 w-16 rounded object-cover"
            width={200}
            height={200}
          />
        ) : (
          <div className="inset-0 flex h-24 w-16 flex-col items-center justify-center rounded bg-gray-300">
            <FontAwesomeIcon icon={faFilm} className="p-2 text-gray-500" />
          </div>
        )}
      </div>

      <div className="relative flex-1">
        <div className="flex h-full items-start justify-between gap-3">
          <div>
            <h2 className="font-medium text-gray-800 dark:text-white">
              {work.title}
            </h2>
            <div className="flex flex-wrap items-center gap-2 text-sm text-gray-400">
              {work.releaseDate && (
                <span>{work.releaseDate.getFullYear()}</span>
              )}
            </div>
            <div className="mt-1 line-clamp-2 text-xs text-gray-400">
              {work.description}
            </div>

            {work.director && (
              <div className="mt-1 text-xs text-gray-500">
                {work.director && <span>Regia: {work.director}</span>}
              </div>
            )}
          </div>

          <div className="flex h-full flex-col items-end justify-between">
            <div className="flex flex-col items-end gap-2 sm:flex-row sm:items-center sm:gap-0">
              {work.myRating && (
                <div className="flex items-center rounded bg-green-600/20 px-2 py-1 sm:mr-2">
                  <Rating value={work.myRating} mine />
                </div>
              )}
              {work.averageRating && (
                <div className="flex items-center rounded bg-yellow-600/20 px-2 py-1">
                  <Rating
                    value={work.averageRating}
                    votes={work.ratingsCount ?? 0}
                  />
                </div>
              )}
            </div>

            {workModel && (
              <RatingDialog data={workModel} mediaType={mediaType} />
            )}
          </div>
        </div>
      </div>

    </div>
  );
}
