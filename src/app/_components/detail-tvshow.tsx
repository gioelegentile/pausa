
/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
/* eslint-disable @typescript-eslint/prefer-nullish-coalescing */
"use client";

import Image from "next/legacy/image";
import { NoPoster } from "./no-poster";
import React, { useEffect, useState } from "react";
import { type WorkModelDetail, type MediaType, type WorkModel, type MovieCredits, type CastMember } from "~/app/_models/works";


export type DetailPageComponentProps = {
    mediaType: MediaType, 
    id: number
    detail: WorkModelDetail
    credits: MovieCredits
}

export function DetailTvShowComponent({mediaType, id, detail, credits}: DetailPageComponentProps) {
//   const router = useRouter();
//   const rating = api.workRating.getByExternalId.useQuery(id, {
//     staleTime: StaleTimes.ONE_WEEK,
//   });
  
  const [voting, setVoting] = useState(false);
  const [selectedWork, setSelectedWork] = useState<WorkModel | null>(null);
  const [topActors, setTopActors] = useState<CastMember[]>();


  useEffect(() => {
    if (credits && Array.isArray(credits.cast)) {
      const sortedActors = credits.cast
        .filter((actor) => actor.popularity !== undefined)
        .sort((a, b) => b.popularity - a.popularity)
        .slice(0, 6);
      setTopActors(sortedActors);
    }
  }, [credits]);

  const handleVoting = async (work: WorkModel) => {
    setVoting(true);
    setSelectedWork(work);
  };

  const renderGenere = () => {
    let genres = ''
    detail.genres.map((genre, index) => {
      if(detail.genres.length-1>index){
        genres = genre.name + '' + genres
      } else {
        genres = genre.name + ', ' + genres
      }
    })
    return genres
  }

  const renderLingua = () => {
    let language = ''
    if(detail.language){
      detail.language.map((l, index) => {
        if(detail.genres.length-1>index){
          language = l.name + ' ' + language
        } else {
          language = l.name + ', ' + language
        }
      })
    }
    return language
  }

  console.log('Detail', detail)

  return (
        <div className="min-h-screen bg-gray-900 text-white p-8">
          <div className="max-w-6xl mx-auto">
            {/* Banner and Poster */}
            <div className="relative w-full h-[500px] rounded-xl overflow-hidden">
              <Image
                    src={
                        mediaType === "game" && detail.backdropPath
                        ? detail.backdropPath
                        : `https://image.tmdb.org/t/p/w500${detail.backdropPath}`
                    }
                    alt={detail.title}
                    layout="fill"
                    objectFit="cover"
                    className="transition-transform duration-300 group-hover:scale-105"
                    loading="lazy"
              />
              <div className="absolute inset-0 bg-gradient-to-r from-gray-900/90 via-gray-900/60 to-transparent" />
              <div className="absolute bottom-6 left-6 flex gap-6">
                {/* Poster */}
                {detail.posterPath ? (
                  <Image
                    src={
                        mediaType === "game"
                        ? detail.posterPath
                        : `https://image.tmdb.org/t/p/w500${detail.posterPath}`
                    }
                    alt={detail.title}
                    layout="fixed"
                    width={300}
                    height={400}
                    objectFit="cover"
                    className="transition-transform duration-300 group-hover:scale-105"
                    loading="lazy"
                  />
                ) : (
                    <div className="absolute inset-0 flex items-center justify-center bg-gradient-to-br from-gray-800 to-gray-900 p-4">
                    <NoPoster />
                    </div>
                )}
                <div>
                  <h1 className="text-4xl font-bold">{detail.title}</h1>
                  <p className="text-lg text-gray-300 mt-2">{detail.date} • {renderGenere()} </p>
                  <div className="flex items-center gap-2 mt-4">
                    
                  </div>
                  {/* <button className="mt-6 px-4 py-2 bg-green-600 hover:bg-green-700 text-white rounded-md">
                    Add to Watchlist
                  </button> */}
                </div>
              </div>
            </div>
    
            {/* Overview Section */}
            <div className="mt-12 grid grid-cols-1 md:grid-cols-4 gap-8">
              <div className="md:col-span-3">
                <h2 className="text-2xl font-semibold mb-4">Descrizione</h2>
                <p className="text-gray-300">
                    {detail.overview}
                </p>
              </div>
    
              {/* Additional Details */}
              <div>
                <h3 className="text-xl font-semibold mb-4">Details</h3>
                <ul className="text-gray-300 space-y-2">
                  <li><strong>Stato:</strong> {detail.status}</li>
                  <li><strong>Data di Rilascio:</strong> {detail.date}</li>
                  <li><strong>Episodi:</strong> {detail.numberEpisodes}</li>
                  <li><strong>Stagioni:</strong> {detail.numberSeasons}</li>
                  <li><strong>Lingua:</strong> {renderLingua()}</li>
                </ul>
              </div>
            </div>
    
            {/* Cast Section */}
            <div className="mt-12">
              <h2 className="text-2xl font-semibold mb-4">Top Cast</h2>
              <div className="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-4">
                {topActors ? topActors.map((_, i) => (
                  <div key={i} className="bg-gray-800 p-4 rounded-lg">
                  <Image
                    src={topActors[i]?.profile_path ? topActors[i]?.profile_path : ''}
                    alt={detail.title}
                    layout="fixed"
                    width={300}
                    height={400}
                    objectFit="cover"
                    className="transition-transform duration-300 group-hover:scale-105"
                    loading="lazy"
                  />
                    <p className="font-semibold">{topActors[i]?.character}</p>
                    <p className="text-sm text-gray-400">{topActors[i]?.original_name}</p>
                  </div>
                )) : null}
              </div>
            </div>
          </div>
        </div>
      );
}