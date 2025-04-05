"use client";

import moment from "moment";
import Image from "next/legacy/image";
import { NoPoster } from "./no-poster";
import { Rating } from "./rating";
import { StarIcon } from "@heroicons/react/16/solid";
import React, { useCallback, useEffect, useState } from "react";
import { api } from "~/trpc/react";
import { type Movie } from "../api/search/route";
import { type Work as WorkType } from "@prisma/client";
import { useRouter } from "next/navigation";

type WorkProps = {
  data: Movie;
  mediaType?: "movie" | "tvshow" | "anime" | "game";
};

export function Work({ data, mediaType = "movie" }: WorkProps) {
  const [voting, setVoting] = useState(false);
  const [rate, setRate] = useState(0);
  const [hoveredStar, setHoveredStar] = useState(0);
  const router = useRouter();

  const workMutation = api.work.create.useMutation();
  const ratingMutation = api.workRating.create.useMutation();
  const workQuery = api.work.getByExternalId.useQuery(data.id);
  const rating = api.workRating.getByExternalId.useQuery(data.id);

  const handleClick = useCallback((e: React.MouseEvent) => {
    if (!voting) {
      // Se non stiamo votando, mostriamo il pulsante di voto
      setVoting(true);
      // Fermiamo la propagazione dell'evento per evitare la navigazione
      e.stopPropagation();
    } else {
      // Se stiamo già votando, nascondiamo il pulsante di voto
      setVoting(false);
    }
  }, [voting]);

  const handleNavigateToDetails = useCallback(() => {
    if (!voting) {
      // Se non stiamo votando, navighiamo alla pagina di dettaglio
      // router.push(`/details/${mediaType}/${data.id}`);
    }
  }, [voting, router, mediaType, data.id]);

  const handleSetRate = useCallback((rate: number) => {
    setRate(rate);

    if (rate > 0) {
      try {
        let work: WorkType | null = null;

        if (workQuery.data) {
          work = workQuery.data;
        } else if (workMutation.mutate) {
          work = workMutation.mutate({ externalId: data.id, type: mediaType })!;
        } else {
          console.error("workMutation.mutate is not available");
          return;
        }

        if (work && ratingMutation.mutateAsync) {
          ratingMutation.mutateAsync({
            externalId: data.id,
            workId: work.id,
            rating: rate
          }).catch(error => console.error("Error rating media:", error));
        } else {
          console.error("ratingMutation.mutateAsync is not available or work is null");
        }
      } catch (error) {
        console.error("Error in handleSetRate:", error);
      }
    }
  }, [data.id, workQuery.data, workMutation, ratingMutation]);

  useEffect(() => {
    if (workQuery.data) {
      if (rating.data) {
        setRate(rating.data.rating);
      }
    }
  }, [workQuery.data, rating.data]);

  // Helper per ottenere il titolo corretto in base al tipo di media
  // const getTitle = () => {
  //   if (mediaType === "movie") {
  //     return data.title || "";
  //   } else {
  //     return data.name || data.title || "";
  //   }
  // };

  // Helper per ottenere la data di rilascio/primo episodio
  // const getReleaseDate = () => {
  //   if (mediaType === "movie") {
  //     return data.release_date;
  //   } else {
  //     return data.first_air_date || data.release_date;
  //   }
  // };

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
          <span className="inline-flex items-center px-2 py-1 text-xs font-medium rounded-md bg-purple-500 text-white mb-2 mr-1">
            TV
          </span>
        );
      case "anime":
        return (
          <span className="inline-flex items-center px-2 py-1 text-xs font-medium rounded-md bg-pink-500 text-white mb-2 mr-1">
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
      className="relative aspect-[2/3] rounded-xl overflow-hidden shadow-lg cursor-pointer group transition-all duration-300"
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
        <div className="absolute inset-0 bg-gradient-to-br from-gray-800 to-gray-900 flex items-center justify-center p-4">
          <NoPoster />
        </div>
      )}

      {/* Overlay scuro */}
      <div className="absolute inset-0 bg-gradient-to-t from-black via-black/60 to-transparent opacity-70 group-hover:opacity-80 transition-opacity"></div>

      {/* Contenuto */}
      {!voting && (
        <div className="absolute inset-0 flex flex-col justify-between p-4 text-white z-10">
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
            <h2 className="text-lg font-bold line-clamp-2">{data.title}</h2>
            {data.release_date && (
              <p className="text-sm text-gray-300 mb-1">
                {moment(data.release_date, "YYYY-MM-DD").year()}
              </p>
            )}

            {!!rate && <Rating value={rate} mine className="mt-1" />}
            {!!data.vote_average && (
              <Rating value={data.vote_average} votes={data.vote_count} />
            )}

            {/* Pulsante per votare */}
            <button
              className="mt-2 px-2 py-1 text-xs bg-indigo-600 hover:bg-indigo-700 rounded-md transition-colors"
              onClick={handleClick}
            >
              {rate > 0 ? "Modifica voto" : "Vota"}
            </button>
          </div>
        </div>
      )}

      {/* UI per votare */}
      {voting && (
        <div className="absolute inset-0 z-10 flex flex-col items-center justify-center bg-black/70 p-4" onClick={(e) => e.stopPropagation()}>
          <h3 className="text-white text-lg font-medium mb-4 text-center">{data.title}</h3>
          <div className="flex space-x-1">
            {[1, 2, 3, 4, 5].map((star) => (
              <StarIcon
                key={star}
                className={`h-10 w-10 cursor-pointer transition-all ${
                  star <= (hoveredStar || rate) 
                    ? 'text-yellow-400 scale-110' 
                    : 'text-gray-400'
                }`}
                onClick={() => handleSetRate(star)}
                onMouseEnter={() => setHoveredStar(star)}
                onMouseLeave={() => setHoveredStar(0)}
              />
            ))}
          </div>
          <p className="text-white text-sm mt-3">
            {rate ? `Il tuo voto: ${rate}/5` : "Clicca per votare"}
          </p>

          {/* Pulsante per chiudere la UI di voto */}
          <button
            className="mt-4 px-3 py-1 text-sm bg-gray-600 hover:bg-gray-700 rounded-md transition-colors text-white"
            onClick={handleClick}
          >
            Chiudi
          </button>
        </div>
      )}
    </div>
  );
}