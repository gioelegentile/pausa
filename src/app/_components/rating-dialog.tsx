import StarRatingSlider from "./star-rating-slider";
import { type Movie } from "../api/movies/route";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faTimes } from "@fortawesome/free-solid-svg-icons";
import React, { useState, useRef, useCallback, useEffect } from "react";
import { api } from "~/trpc/react";
import { type Work } from "@prisma/client";
import { type MediaType } from "../models/types";

type RatingDialogProps = {
  data: Movie;
  mediaType: MediaType;
  onClose: () => void;
};

export default function RatingDialog({
  data,
  onClose,
  mediaType,
}: RatingDialogProps) {
  const [currentRating, setCurrentRating] = useState(0);
  const [rate, setRate] = useState(0);
  const [tempRate, setTempRate] = useState(0);
  const [resetKey, setResetKey] = useState(0); // Add a key to force re-render
  const [isLoading, setIsLoading] = useState(false);
  const dialogRef = useRef<HTMLDivElement>(null);
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

  useEffect(() => {
    setCurrentRating(rating.data ? rating.data.rating : 0);
    setResetKey(prev => prev + 1); // Increment key to force re-render
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
            work = await workMutation.mutateAsync(
              { externalId: data.id, type: mediaType }
            );
          }

          if (work) {
            createOrUpdateMutation
              .mutateAsync({
                externalId: data.id,
                workId: work.id,
                rating: rate,
              })
              .catch((error) => console.error("Error creating or updating rating:", error));
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
    [data.id, workQuery.data, workMutation, createOrUpdateMutation, mediaType],
  );

  const handleBackdropClick = (e: React.MouseEvent) => {
    if (dialogRef.current && !dialogRef.current.contains(e.target as Node)) {
      onClose();
    }
  };

  const handleConfirm = async () => {
    await handleSetRate(rate);
    onClose();
  }

  const handleReset = () => {
    setCurrentRating(0);
    setRate(0);
    setTempRate(0);
    setResetKey(prev => prev + 1); // Increment key to force re-render
  }

  const getRate = () => {
    const rateToShow = (rate > 0 ? rate : tempRate).toFixed(1);
    if (rateToShow === "0.0") {
      return "";
    }
    return rateToShow;
  }

  return (
    <div
      className="bg-opacity-0 fixed inset-0 z-50 flex items-center justify-center backdrop-blur-sm"
      onClick={handleBackdropClick}
    >
      <div
        ref={dialogRef}
        className="relative w-96 rounded-lg bg-gray-800 p-6 shadow-lg shadow-gray-600"
      >
        <button
          onClick={onClose}
          className="absolute top-2 right-2 text-gray-400 hover:text-white focus:outline-none"
          aria-label="Chiudi"
        >
          {!isLoading && <FontAwesomeIcon icon={faTimes} className="h-5 w-5" />}
          {isLoading && (
            <div className="h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-indigo-600"></div>
          )}
        </button>

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
          disabled={isLoading || rate === 0}
          className="disabled:bg-gray-500 disabled:pointer-events-none w-full rounded bg-gradient-to-br from-purple-600 to-blue-500 px-4 py-2 text-center text-white shadow-md hover:bg-gradient-to-bl"
          onClick={handleConfirm}
        >
          Conferma
        </button>
        <button
          disabled={isLoading || rate === 0}
          className="disabled:bg-gray-500 disabled:pointer-events-none mt-2 w-full rounded bg-red-500 px-4 py-2 text-center text-white hover:bg-red-400"
          onClick={handleReset}
        >
          Reset
        </button>
      </div>
    </div>
  );
}
