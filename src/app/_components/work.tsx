"use client";

import moment from "moment";
import Image from "next/legacy/image";
import { NoPoster } from "./no-poster";
import { Rating } from "./rating";
import React, { useCallback } from "react";
import { api } from "~/trpc/react";
import { type Movie } from "../api/movies/route";
import { useRouter } from "next/navigation";

type WorkProps = {
  data: Movie;
  mediaType?: "movie" | "tvshow" | "anime" | "game";
  onClickVoting: () => void;
  currentRating?: number;
};

export function Work({ data, onClickVoting, mediaType = "movie" }: WorkProps) {
  const router = useRouter();
  const rating = api.workRating.getByExternalId.useQuery(data.id);

  const handleNavigateToDetails = useCallback(() => {
    // Se non stiamo votando, navighiamo alla pagina di dettaglio
    // router.push(`/details/${mediaType}/${data.id}`);
  }, [router, mediaType, data.id]);

  // Determina il tipo di badge da mostrare
  const getMediaTypeBadge = () => {
    switch (mediaType) {
      case "movie":
        return (
          <span className="inline-flex items-center px-2 py-1 text-xs font-medium rounded-md bg-blue-500 text-white mb-2 mr-1">
            Film
          </span>
        );
      case "tvshow":
        return (
          <span className="mr-1 mb-2 inline-flex items-center rounded-md bg-purple-500 px-2 py-1 text-xs font-medium text-white">
            TV
          </span>
        );
      case "anime":
        return (
          <span className="mr-1 mb-2 inline-flex items-center rounded-md bg-pink-500 px-2 py-1 text-xs font-medium text-white">
            Anime
          </span>
        );
      case "game":
        return (
          <span className="inline-flex items-center px-2 py-1 text-xs font-medium rounded-md bg-green-500 text-white mb-2 mr-1">
            Gioco
          </span>
        );
      default:
        return null;
    }
  };

  return (
    <div
      className="group relative aspect-[2/3] cursor-pointer overflow-hidden rounded-xl transition-all duration-300 shadow-gray-300 dark:shadow-none shadow-md"
      onClick={handleNavigateToDetails}
    >
      {/* Poster */}
      {data.poster_path ? (
        <Image
          src={`https://image.tmdb.org/t/p/w500${data.poster_path}`}
          alt={data.title}
          layout="fill"
          objectFit="cover"
          className="transition-transform duration-300 group-hover:scale-105"
          loading="lazy"
        />
      ) : (
        <div className="absolute inset-0 flex items-center justify-center bg-gradient-to-br from-gray-800 to-gray-900 p-4">
          <NoPoster />
        </div>
      )}

      {/* Overlay scuro */}
      <div className="absolute inset-0 bg-gradient-to-t from-black via-black/60 to-transparent opacity-70 transition-opacity group-hover:opacity-80"></div>

      {/* Contenuto */}
      <div className="absolute inset-0 z-10 flex flex-col justify-between p-4 text-white">
        <div>
          {/* Badge per il tipo di media */}
          {getMediaTypeBadge()}

          {/* Badge per contenuti nuovi o popolari */}
          {moment(data.release_date).isAfter(moment().subtract(3, 'months')) && (
            <span className="inline-flex items-center px-2 py-1 text-xs font-medium rounded-md bg-green-500 text-white mb-2">
              Nuovo
            </span>
          )}
          {data.vote_average > 7.5 && (
            <span className="inline-flex items-center px-2 py-1 text-xs font-medium rounded-md bg-yellow-500 text-white mb-2 ml-1">
              Popolare
            </span>
          )}
        </div>

        <div>
          <h2 className="line-clamp-2 text-lg font-bold">{data.title}</h2>
          {data.release_date && (
            <p className="mb-1 text-sm text-gray-300">
              {moment(data.release_date, "YYYY-MM-DD").year()}
            </p>
          )}

          {/* Valutazione media */}
          {rating.isLoading && <div className="h-3 w-3 mx-0.5 my-1 animate-spin rounded-full border-2 border-gray-300 border-t-green-600"></div>}
          {!rating.isLoading && rating.data && rating.data.rating !== 0 && (
            <Rating value={rating.data.rating} isLoading={rating.isRefetching} mine className="mt-1" />
          )}
          {!!data.vote_average && (
            <Rating value={data.vote_average} votes={data.vote_count} />
          )}

          {/* Pulsante per votare */}
          <button
            className="cursor-pointer mt-2 rounded-md bg-indigo-600 px-2 py-1 text-xs transition-colors hover:bg-indigo-700 h-6"
            onClick={onClickVoting}
          >
            {rating.isLoading && <div className="h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-indigo-600"></div>}
            {!rating.isLoading && (<>{rating.data ? "Modifica voto" : "Vota"}</>)}
          </button>
        </div>
      </div>

    </div>
  );
}
