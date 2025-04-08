"use client";

import { useState } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faFilm, faTv } from "@fortawesome/free-solid-svg-icons";
import { TabellaVoti } from "~/app/_components/tabella-voti";

export function VotesContent() {
  const [mediaType, setMediaType] = useState<"movie" | "tvshow" | "anime" | "game">("movie");

  const handleMediaTypeChange = (type: "movie" | "tvshow" | "anime" | "game") => {
    setMediaType(type);
  };

  return (
    <div className="flex-1 px-4 py-8 sm:px-6 lg:px-8">
      <div className="relative">
        <div className="flex flex-col items-center justify-center gap-4">
          <div className="text-center">
            <h1 className="text-3xl font-bold text-gray-900 dark:text-white">
              I tuoi voti
            </h1>
            <p className="mt-2 text-xl text-gray-600 dark:text-gray-300">
              Visualizza e gestisci tutti i tuoi voti
            </p>
          </div>

          {/* Pulsanti di selezione del tipo di media */}
          <div className="mb-8 flex justify-center">
            <div className="flex space-x-2">
              <button
                type="button"
                onClick={() => handleMediaTypeChange("movie")}
                className={`rounded-lg px-4 py-2.5 text-sm font-medium transition-all duration-200 ${
                  mediaType === "movie"
                    ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                    : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow dark:border-gray-600 dark:bg-gray-800 dark:text-gray-300 dark:hover:border-indigo-500 dark:hover:text-indigo-400"
                }`}
              >
                <div className="flex items-center">
                  <FontAwesomeIcon icon={faFilm} className="mr-2 h-4 w-4" />
                  Film
                </div>
              </button>
              <button
                type="button"
                onClick={() => handleMediaTypeChange("tvshow")}
                className={`rounded-lg px-4 py-2.5 text-sm font-medium transition-all duration-200 ${
                  mediaType === "tvshow"
                    ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                    : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow dark:border-gray-600 dark:bg-gray-800 dark:text-gray-300 dark:hover:border-indigo-500 dark:hover:text-indigo-400"
                }`}
              >
                <div className="flex items-center">
                  <FontAwesomeIcon icon={faTv} className="mr-2 h-4 w-4" />
                  Serie TV
                </div>
              </button>
            </div>
          </div>

          {/* Tabella dei voti */}
          <div className="w-full max-w-6xl">
            <TabellaVoti mediaType={mediaType} />
          </div>
        </div>
      </div>
    </div>
  );
}
