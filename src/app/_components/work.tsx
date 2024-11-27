import moment from "moment";
import Image from "next/legacy/image";
import { NoPoster } from "./no-poster";
import { Rating } from "./rating";
import { Movie } from "~/server/tmdb/tmdbapi";
import { StarIcon } from "@heroicons/react/16/solid";
import { useEffect, useState } from "react";

type WorkProps = {
  data: Movie;
};

export function Work({ data }: WorkProps) {
  const [voting, setVoting] = useState(false);
  const [rate, setRate] = useState(0);

  useEffect(() =>
    console.log(rate), [rate]);

  return (
    <>
      <div className="relative w-full max-w-md h-64 rounded-lg overflow-hidden shadow-lg cursor-pointer"
        onClick={() => setVoting(prev => !prev)}>

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

        <div className="absolute inset-0 bg-black/50"></div>

        {!voting && (
          <div className="relative z-10 p-4 flex flex-col justify-between h-full text-white text-left">
            <div className="">
              <h2 className="text-xl font-bold">{data.title}</h2>
              {data.release_date && (
                <p className="text-sm">
                  {moment(data.release_date, "YYYY-MM-DD").year()}
                </p>
              )}
            </div>
            <div>
              {!!rate && <Rating value={rate} mine />}
              {!!data.vote_average && (
                <Rating value={data.vote_average} votes={data.vote_count} />
              )}
            </div>
          </div>
        )}

        {voting && (
          <div className="relative flex items-center z-10 h-full justify-center">
            <StarIcon className={`h-10 w-10 ${rate >= 1 ? 'text-yellow-400' : 'text-gray-400'}`} onClick={() => setRate(1)} />
            <StarIcon className={`h-10 w-10 ${rate >= 2 ? 'text-yellow-400' : 'text-gray-400'}`} onClick={() => setRate(2)} />
            <StarIcon className={`h-10 w-10 ${rate >= 3 ? 'text-yellow-400' : 'text-gray-400'}`} onClick={() => setRate(3)} />
            <StarIcon className={`h-10 w-10 ${rate >= 4 ? 'text-yellow-400' : 'text-gray-400'}`} onClick={() => setRate(4)} />
            <StarIcon className={`h-10 w-10 ${rate >= 5 ? 'text-yellow-400' : 'text-gray-400'}`} onClick={() => setRate(5)} />
          </div>
        )}
      </div>
    </>
  );
}