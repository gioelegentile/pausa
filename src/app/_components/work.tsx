/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
/* eslint-disable @typescript-eslint/prefer-nullish-coalescing */
"use client";

import moment from "moment";
import Image from "next/legacy/image";
import { NoPoster } from "./no-poster";
import { Rating } from "./rating";
import React, { useCallback } from "react";
import { api } from "~/trpc/react";
import { useRouter } from "next/navigation";
import { type MediaType, type WorkModel } from "~/app/_models/works";
import { StaleTimes } from "~/app/_utils/stale-times";
import RatingDialog from "./rating-dialog";

type WorkProps = {
  data: WorkModel;
  mediaType: MediaType;
};

export function Work({ data, mediaType }: WorkProps) {
  const router = useRouter();
  const rating = api.workRating.getByExternalId.useQuery(data.id, {
    staleTime: StaleTimes.ONE_WEEK,
  });

  const handleNavigateToDetails = useCallback(() => {
    // Se non stiamo votando, navighiamo alla pagina di dettaglio
    // router.push(`/details/${mediaType}/${data.id}`);
  }, [router, mediaType, data.id]);

  // Determina il tipo di badge da mostrare
  const getMediaTypeBadge = () => {
    switch (mediaType) {
      case "movie":
        return (
          <span className="mr-1 mb-2 inline-flex items-center rounded-md bg-blue-500 px-2 py-1 text-xs font-medium text-white">
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
          <span className="mr-1 mb-2 inline-flex items-center rounded-md bg-green-500 px-2 py-1 text-xs font-medium text-white">
            Gioco
          </span>
        );
      default:
        return null;
    }
  };

  return (
    <div
      className="group relative aspect-[2/3] cursor-pointer overflow-hidden rounded-xl shadow-md shadow-gray-300 transition-all duration-300 dark:shadow-none"
      onClick={handleNavigateToDetails}
    >
      {/* Poster */}
      {data.posterPath ? (
        <Image
          src={
            mediaType === "game"
              ? data.posterPath
              : `https://image.tmdb.org/t/p/w500${data.posterPath}`
          }
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

          {data.voteAverage > 7.5 && (
            <span className="mb-2 ml-1 inline-flex items-center rounded-md bg-yellow-500 px-2 py-1 text-xs font-medium text-white">
              Popolare
            </span>
          )}
        </div>

        <div>
          <h2 className="line-clamp-2 text-lg font-bold">{data.title}</h2>
          {data.date && (
            <p className="mb-1 text-sm text-gray-300">
              {moment(data.date, "YYYY-MM-DD").year()}
            </p>
          )}

          {/* Valutazione media */}
          {rating.isLoading && (
            <div className="mx-0.5 my-1 h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-green-600"></div>
          )}
          {!rating.isLoading && rating.data && rating.data.rating !== 0 && (
            <Rating
              value={rating.data.rating}
              isLoading={rating.isRefetching}
              mine
              className="mt-1"
            />
          )}
          {!!data.voteAverage && (
            <Rating value={data.voteAverage} votes={data.voteCount} />
          )}

          <RatingDialog data={data} mediaType={mediaType} />
        </div>
      </div>
    </div>
  );
}
