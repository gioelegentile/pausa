/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
/* eslint-disable @typescript-eslint/prefer-nullish-coalescing */
"use client";

import moment from "moment";
import Image from "next/legacy/image";
import { NoPoster } from "./no-poster";
import { Rating } from "./rating";
import React, { useCallback, useEffect, useState } from "react";
import { api } from "~/trpc/react";
import { type Movie } from "../api/search/route";
import { type Work as WorkType } from "@prisma/client";
import { useRouter } from "next/navigation";
import StarRatingSlider from "./star-rating-slider";

type WorkProps = {
  data: Movie;
  mediaType?: "movie" | "tvshow" | "anime" | "game";
};

export function Work({ data, mediaType = "movie" }: WorkProps) {
  const [voting, setVoting] = useState(false);
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

  const handleClick = useCallback(
    (e: React.MouseEvent) => {
      if (!voting) {
        setVoting(true);
        e.stopPropagation();
      } else {
        setVoting(false);
      }
    },
    [voting],
  );

  const handleNavigateToDetails = useCallback(() => {
    if (!voting) {
      // Se non stiamo votando, navighiamo alla pagina di dettaglio
      // router.push(`/details/${mediaType}/${data.id}`);
    }
  }, [voting, router, mediaType, data.id]);

  const handleSetRate = useCallback(
    async (rate: number) => {
      setRate(rate);
      setShowPing(true);
      setVoting(false);

      if (rate > 0) {
        try {
          let work: WorkType | null = null;

          if (workQuery.data) {
            work = workQuery.data;
          } else {
            const fetchDirectorName = await fetch(`api/get-director?id=${data.id}`, {
              method: "GET",
              headers: {
                "Content-Type": "application/json",
              },
            });
            const response = await fetchDirectorName.json();
            const directorName = response.directorName;

            work = await workMutation.mutateAsync(
              { 
                externalId: data.id, 
                type: mediaType,
                title: data.title,
                year: moment(data.release_date).year(),
                director: directorName,
                posterPath: data.poster_path || undefined,
              }
            );
          }

          if (work) {
            if (rating.data) {
              updateRatingMutation
                .mutateAsync({
                  id: rating.data.id,
                  rating: rate,
                })
                .catch((error) => console.error("Error updating rating:", error));
            } else {
              createRatingMutation
                .mutateAsync({
                  externalId: data.id,
                  workId: work.id,
                  rating: rate,
                })
                .catch((error) => console.error("Error rating media:", error));
            }
          } else {
            console.error(
              "ratingMutation.mutateAsync is not available or work is null",
            );
          }
        } catch (error) {
          console.error("Error in handleSetRate:", error);
        }

      }
    },
    [data.id, rating.data, workQuery.data, workMutation, createRatingMutation, updateRatingMutation, mediaType],
  );

  useEffect(() => {
    if (workQuery.data) {
      if (rating.data) {
        setRate(rating.data.rating);
      }
    }
  }, [workQuery.data, rating.data]);

  useEffect(() => {
    if (showPing) {
      const timer = setTimeout(() => {
        setShowPing(false);
      }, 1000);
      
      return () => clearTimeout(timer);
    }
  }, [showPing]);

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
      {!voting && (
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
              onClick={handleClick}
            >
              {rate > 0 ? "Modifica voto" : "Vota"}
            </button>
          </div>
        </div>
      )}

      {/* UI per votare */}
      {voting && (
        <div
          className="absolute inset-0 z-10 flex flex-col items-center justify-center bg-black/70 p-4"
          onClick={(e) => e.stopPropagation()}
        >
          <h3 className="mb-4 text-center text-lg font-medium text-white">
            {data.title}
          </h3>
          <div className="flex">
            <StarRatingSlider
              onChange={(rating) => handleSetRate(rating)}
              initialRating={rate}
            />
          </div>
          <p className="text-white text-sm mt-3">
            Scorri per votare
          </p>

          {/* Pulsante per chiudere la UI di voto */}
          <button
            className="mt-4 rounded-md bg-gray-600 px-3 py-1 text-sm text-white transition-colors hover:bg-gray-700"
            onClick={handleClick}
          >
            Chiudi
          </button>
        </div>
      )}

      {showPing && (
        <span className="absolute inset-0 flex items-center justify-center">
          <span className="animate-ping absolute h-full w-full bg-yellow-400"></span>
        </span>
      )}
    </div>
  );
}
