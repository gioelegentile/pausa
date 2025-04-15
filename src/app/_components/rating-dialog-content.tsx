import StarRatingSlider from "./star-rating-slider";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar } from "@fortawesome/free-solid-svg-icons";
import React, { useCallback, useEffect, useState } from "react";
import { api } from "~/trpc/react";
import { type Work } from "@prisma/client";
import { useQuery } from "@tanstack/react-query";
import { fetchGenres } from "~/app/_utils/tmdb";
import LoadingSpinner from "~/app/_components/ui/loading-spinner";
import { type MediaType, type WorkModel } from "~/app/_models/works";

type RatingDialogProps = {
  data: WorkModel;
  mediaType: MediaType;
  onClose: () => void;
};

export default function RatingDialogContent({
  data,
  onClose,
  mediaType,
}: RatingDialogProps) {
  const [currentRating, setCurrentRating] = useState(0);
  const [rate, setRate] = useState(0);
  const [tempRate, setTempRate] = useState(0);
  const [resetKey, setResetKey] = useState(0);
  const [isLoading, setIsLoading] = useState(false);
  const utils = api.useUtils();

  const workMutation = api.work.create.useMutation({
    onSuccess: async () => {
      await utils.work.getByExternalId.invalidate(data.id);
    },
  });
  const createOrUpdateMutation = api.workRating.createOrUpdate.useMutation({
    onSuccess: async () => {
      await utils.workRating.getByExternalId.invalidate(data.id);
    },
  });
  const workQuery = api.work.getByExternalId.useQuery(data.id);
  const rating = api.workRating.getByExternalId.useQuery(data.id);

  const { data: genres } = useQuery({
    queryKey: ["genres", mediaType],
    queryFn: () => fetchGenres(mediaType),
  });

  useEffect(() => {
    setCurrentRating(rating.data ? rating.data.rating : 0);
    setResetKey((prev) => prev + 1); // Increment key to force re-render
  }, [rating.data]);

  const handleSetRate = useCallback(
    async (rate: number) => {
      setIsLoading(true);
      setRate(rate);

      if (rate > 0) {
        try {
          let work: Work | null = null;

          if (workQuery.data) {
            work = workQuery.data;
          } else {

            let director = { directorName: "" };

            if (mediaType === "movie") {
              director = await fetch("/api/director?id=" + data.id).then(
                (r) =>
                  r.json() as Promise<{
                    directorName: string;
                  }>,
              );
            }

            const genreNames = data.genreIds
              .map((id) => {
                const genre = genres?.find((genre) => genre.id === id);
                return genre ? genre.name : null;
              })
              .filter((id): id is string => id !== null);

            work = await workMutation.mutateAsync({
              externalId: data.id,
              type: mediaType,
              title: data.title,
              director: director.directorName,
              description: data.overview,
              imageUrl: data.posterPath ?? undefined,
              releaseDate: data.date ? new Date(data.date) : undefined,
              genres: genreNames.join(","),
            });
          }

          if (work) {
            createOrUpdateMutation
              .mutateAsync({
                externalId: data.id,
                workId: work.id,
                rating: rate,
              })
              .catch((error) =>
                console.error("Error creating or updating rating:", error),
              );
          } else {
            console.error(
              "ratingMutation.mutateAsync is not available or work is null",
            );
          }
        } catch (error) {
          console.error("Error in handleSetRate:", error);
        }
      }

      setIsLoading(false);
    },
    [
      data.id,
      data.overview,
      data.posterPath,
      data.date,
      data.title,
      mediaType,
      workQuery.data,
      workMutation,
      createOrUpdateMutation,
      data.genreIds,
      genres,
    ],
  );

  const handleConfirm = async () => {
    await handleSetRate(rate);
    onClose();
  };

  const handleReset = () => {
    setCurrentRating(0);
    setRate(0);
    setTempRate(0);
    setResetKey((prev) => prev + 1); // Increment key to force re-render
  };

  const getRate = () => {
    const rateToShow = (rate > 0 ? rate : tempRate).toFixed(1);
    if (rateToShow === "0.0") {
      return "";
    }
    return rateToShow;
  };

  return (
    <div className={`${isLoading ? "pointer-events-none" : ""}`}>
      <div
        className="relative mb-4 flex w-full items-center justify-center text-center"
        style={{ minHeight: "120px" }}
      >
        <FontAwesomeIcon
          icon={faStar}
          className={`relative text-yellow-500 transition-all`}
          style={{ height: `${((rate === 0 ? tempRate : rate) + 20) * 4}px` }}
        />

        <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 transform text-lg font-semibold text-white text-shadow-lg/20">
          {getRate()}
        </div>
      </div>
      <h2 className="mb-4 text-center text-lg font-semibold text-white">
        {data.title}
      </h2>
      <div className="mb-4 flex items-center justify-center">
        <StarRatingSlider
          key={resetKey} // Use resetKey to force re-render
          currentRating={currentRating}
          onTempRateChange={setTempRate}
          onRatingChange={setRate}
        />
      </div>
      <button
        className="w-full rounded bg-gradient-to-br from-purple-600 to-blue-500 px-4 py-2 text-center text-white shadow-md hover:bg-gradient-to-bl"
        onClick={handleConfirm}
      >
        {isLoading ? <LoadingSpinner /> : "Conferma"}
      </button>
      <button
        className="mt-2 w-full rounded bg-red-500 px-4 py-2 text-center text-white hover:bg-red-400"
        onClick={handleReset}
      >
        Reset
      </button>
    </div>
  );
}
