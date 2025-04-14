import { api } from "~/trpc/server";
import { type MediaType } from "../models/types";
import Link from "next/link";
import Image from "next/image";
import {NoPoster} from "~/app/_components/no-poster";
import React from "react";

type RatedWorksProps = {
  mediaType: MediaType;
};

export default async function RatedWorks({ mediaType }: RatedWorksProps) {
  const ratedWorks = await api.work.getAllRatedByType({ type: mediaType, sorting: [{ orderBy: "createdAt", orderDirection: "desc" }] });

  return (
    <div className="flex flex-col">
      {ratedWorks.map((work, index) => (
        <Link href={`/work/${work.id}`} key={work.id}>
          <div className="flex p-4 border-b border-gray-700 hover:bg-gray-800/30 transition-colors">
            <div className="flex-shrink-0 mr-4 relative">
              <span className="absolute top-0 left-0 bg-black/60 text-white px-1 text-xs font-medium">
                {index + 1}.
              </span>
              {work.imageUrl ? (
                  <Image
                      src={`https://image.tmdb.org/t/p/w92${work.imageUrl}`}
                      alt={work.title ?? ""}
                      layout="fill"
                      objectFit="cover"
                      className="w-16 h-24 object-cover rounded"
                      loading="lazy"
                  />
              ) : (
                  <div className="absolute inset-0 flex items-center justify-center bg-gradient-to-br from-gray-800 to-gray-900 p-4">
                    <NoPoster />
                  </div>
              )}
              {/*<Image */}
              {/*  src={work.imageUrl ? `https://image.tmdb.org/t/p/w92${work.imageUrl}` : "/placeholder.png"} */}
              {/*  alt={work.title ?? ""}*/}
              {/*  className="w-16 h-24 object-cover rounded"*/}
              {/*/>*/}
            </div>
            <div className="flex-1">
              <div className="flex items-start justify-between">
                <div>
                  <h2 className="font-medium text-gray-800 dark:text-white">
                    {work.title}
                  </h2>
                  <div className="text-sm text-gray-400 flex flex-wrap gap-2 items-center">
                    {work.releaseDate && (
                      <span>{work.releaseDate.getFullYear()}</span>
                    )}
                    {work.averageRating && (
                      <span className="text-xs px-2 py-0.5 bg-gray-700 rounded-sm">{work.averageRating}</span>
                    )}
                  </div>
                </div>
                <div className="flex items-center">
                  {work.myRating && (
                    <div className="flex items-center bg-yellow-600/20 rounded px-2 py-1">
                      <span className="text-yellow-400 text-sm font-bold">{work.myRating}</span>
                      <span className="text-yellow-400/70 text-xs ml-0.5">/10</span>
                    </div>
                  )}
                </div>
              </div>
              
              <div className="mt-1 text-xs text-gray-400 line-clamp-2">
                {work.description}
              </div>
              
              {work.director && (
                <div className="mt-1 text-xs text-gray-500">
                  {work.director && <span>Regia: {work.director}</span>}
                </div>
              )}
            </div>
            <div className="flex-shrink-0 ml-2">
              <div className="flex items-center justify-center w-8 h-8 text-blue-400">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                  <circle cx="12" cy="12" r="10"/>
                  <path d="M12 16v-4"/>
                  <path d="M12 8h.01"/>
                </svg>
              </div>
            </div>
          </div>
        </Link>
      ))}
    </div>
  );
}
