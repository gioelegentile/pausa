"use client";

import moment from "moment";
import Image from "next/image";
import { NoPoster } from "./no-poster";
import { Rating } from "./rating";
import { Movie } from "~/server/tmdb/tmdbapi";

type WorkProps = {
  data: Movie;
};

export function Work({ data }: WorkProps) {
  return (
    <div
      key={data.id}
      className="relative w-full max-w-md h-64 rounded-lg overflow-hidden shadow-lg">

      {data.poster_path ? (
        <Image
          src={`https://image.tmdb.org/t/p/original/${data.poster_path}`}
          alt="poster"
          layout="fill"
          objectFit="cover"
          className="absolute inset-0"
          priority
        />
      ) : (
        <div className="absolute inset-0 bg-gray-800 flex items-center justify-center p-20">
          <NoPoster />
        </div>
      )}

      <div className="absolute inset-0 bg-black bg-opacity-50"></div>

      <div className="relative z-10 p-4 flex flex-col justify-between h-full text-white">
        <div>
          <h2 className="text-xl font-bold">{data.title}</h2>
          {data.release_date && (
            <p className="text-sm">
              {moment(data.release_date, "YYYY-MM-DD").year()}
            </p>
          )}
        </div>
        {!!data.vote_average && (
          <Rating value={data.vote_average} votes={data.vote_count} />
        )}
      </div>

    </div>
  );
}