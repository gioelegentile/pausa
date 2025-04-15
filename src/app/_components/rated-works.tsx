"use client";

import { api } from "~/trpc/react";
import { type MediaType } from "../models/types";
import React, { useEffect, useRef } from "react";
import { Filters } from "~/app/_components/filters";
import RatedWork from "~/app/_components/rated-work";

type RatedWorksProps = {
  mediaType: MediaType;
};

export default function RatedWorks({ mediaType }: RatedWorksProps) {
  const observerTarget = useRef(null);

  const directors = api.work.getAllUniqueDirectors.useQuery(mediaType);

  const { data, fetchNextPage, hasNextPage, isFetchingNextPage } =
    api.work.getInfiniteWorks.useInfiniteQuery(
      {
        limit: 10,
        type: mediaType,
      },
      {
        getNextPageParam: (lastPage) => lastPage.nextCursor,
      },
    );

  useEffect(() => {
    const observer = new IntersectionObserver(
      (entries) => {
        if (entries[0]?.isIntersecting && hasNextPage && !isFetchingNextPage) {
          // eslint-disable-next-line @typescript-eslint/no-floating-promises
          fetchNextPage();
        }
      },
      { threshold: 1.0 },
    );

    const currentTarget = observerTarget.current;
    if (currentTarget) {
      observer.observe(currentTarget);
    }

    return () => {
      if (currentTarget) {
        observer.unobserve(currentTarget);
      }
    };
  }, [fetchNextPage, hasNextPage, isFetchingNextPage]);

  return (
    <div className="w-full">
      <div className="flex justify-end p-4">
        <Filters directors={directors.data} />
      </div>

      <div className="flex flex-col rounded-lg border-2 border-gray-700 bg-gray-800/20">
        {(data?.pages.flatMap((p) => p.works) ?? [])
          .filter((w) => !!w)
          .map((work, index) => (
            <RatedWork
              key={work.id}
              mediaType={mediaType}
              work={work}
              index={index}
            />
          ))}

        {data?.pages.flatMap((p) => p.works).length === 0 && (
          <div className="flex h-32 items-center justify-center text-gray-400">
            Nessuna opera è stata ancora votata.
          </div>
        )}
      </div>

      <div ref={observerTarget} className="flex justify-center p-4">
        {isFetchingNextPage ? (
          <div className="h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-green-600"></div>
        ) : null}
      </div>
    </div>
  );
}
