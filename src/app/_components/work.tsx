"use client";

import moment from "moment";
import Image from "next/legacy/image";
import { NoPoster } from "./no-poster";
import { Rating } from "./rating";
import React, { useCallback, useEffect, useState } from "react";
import { api } from "~/trpc/react";
import { type Movie } from "../api/movies/route";
import { type Work as WorkType } from "@prisma/client";
import { useRouter } from "next/navigation";
import StarRatingSlider from "./star-rating-slider";

type WorkProps = {
  data: Movie;
  mediaType?: "movie" | "tvshow" | "anime" | "game";
  onClickVoting: () => void;
};

export function Work({ data, onClickVoting, mediaType = "movie" }: WorkProps) {
  const [rate, setRate] = useState(0);
  const [showPing, setShowPing] = useState(false);
  const router = useRouter();

  const utils = api.useUtils();
  const workMutation = api.work.create.useMutation({
    onSuccess: async () => {
      await utils.work.getByExternalId.invalidate(data.id);
    },
  });
  const createRatingMutation = api.workRating.create.useMutation({
    onSuccess: async () => {
      await utils.workRating.getByExternalId.invalidate(data.id);
    },
  });
  const updateRatingMutation = api.workRating.update.useMutation({
    onSuccess: async () => {
      await utils.workRating.getByExternalId.invalidate(data.id);
    },
  });
  const workQuery = api.work.getByExternalId.useQuery(data.id);
  const rating = api.workRating.getByExternalId.useQuery(data.id);

  const handleNavigateToDetails = useCallback(() => {
    // Se non stiamo votando, navighiamo alla pagina di dettaglio
    // router.push(`/details/${mediaType}/${data.id}`);
  }, [router, mediaType, data.id]);

  useEffect(() => {
    if (workQuery.data) {
      if (rating.data) {
        setRate(rating.data.rating);
      }
    }
  }, [workQuery.data, rating.data]);

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
      className="group relative aspect-[2/3] cursor-pointer overflow-hidden rounded-xl shadow-lg transition-all duration-300"
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

          {!!rate && <Rating value={rate} mine className="mt-1" />}
          {!!data.vote_average && (
            <Rating value={data.vote_average} votes={data.vote_count} />
          )}

          {/* Pulsante per votare */}
          <button
            className="mt-2 rounded-md bg-indigo-600 px-2 py-1 text-xs transition-colors hover:bg-indigo-700"
            onClick={onClickVoting}
          >
            {rate > 0 ? "Modifica voto" : "Vota"}
          </button>
        </div>
      </div>

      {/* UI per votare */}


      {showPing && (
        <span className="absolute inset-0 flex items-center justify-center">
          <span className="animate-ping absolute h-full w-full bg-yellow-400"></span>
        </span>
      )}

    </div>
  );
}
