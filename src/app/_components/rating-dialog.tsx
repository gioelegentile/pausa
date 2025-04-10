import StarRatingSlider from "./star-rating-slider";
import { type Movie } from "../api/movies/route";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faTimes } from "@fortawesome/free-solid-svg-icons";
import React, { useState, useRef } from "react";

type RatingDialogProps = {
  onClose: () => void;
  onConfirm: (rate: number) => void;
  currentRate: number;
  data: Movie;
  mediaType: "movie" | "tvshow" | "anime" | "game";
};

export default function RatingDialog({
  data,
  onClose,
  onConfirm,
  currentRate,
}: RatingDialogProps) {
  const [rate, setRate] = useState(0);
  const dialogRef = useRef<HTMLDivElement>(null);

  const handleSetRate = async (rate: number) => {
    setRate(rate);
    onConfirm(rate);
  };

  const handleBackdropClick = (e: React.MouseEvent) => {
    if (dialogRef.current && !dialogRef.current.contains(e.target as Node)) {
      onClose();
    }
  };

  return (
    <div
      className="bg-opacity-0 fixed inset-0 z-50 flex items-center justify-center backdrop-blur-sm"
      onClick={handleBackdropClick}
    >
      <div
          ref={dialogRef}
          className="relative h-80 w-96 rounded-lg bg-gray-800 p-6 shadow-lg shadow-gray-600"
      >
        <button
          onClick={onClose}
          className="absolute top-2 right-2 text-gray-400 hover:text-white focus:outline-none"
          aria-label="Chiudi"
        >
          <FontAwesomeIcon icon={faTimes} className="h-5 w-5" />
        </button>

        <div
          className="relative mb-4 flex w-full items-center justify-center text-center"
          style={{ minHeight: "120px" }}
        >
          <FontAwesomeIcon
            icon={faStar}
            className={`relative text-yellow-500 transition-all`}
            style={{ height: `${(rate + 20) * 4}px` }}
          />

          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 transform text-lg font-semibold text-white">
            {rate > 0 ? rate : ""}
          </div>
        </div>
        <h2 className="mb-4 text-center text-lg font-semibold text-white">
          {data.title}
        </h2>
        <div className="mb-4 flex items-center justify-center">
          <StarRatingSlider
            initialRating={currentRate}
            onChange={handleSetRate}
          />
        </div>
        <button
          className="w-full rounded bg-blue-500 px-4 py-2 text-center text-white hover:bg-blue-600"
          onClick={onClose}
        >
          Vota
        </button>
      </div>
    </div>
  );
}
