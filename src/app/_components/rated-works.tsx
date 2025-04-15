"use client";

import { api } from "~/trpc/react";
import {
  type Filters as FiltersType,
  filtersInitialState,
} from "../_models/filters";
import React, { useEffect, useRef, useState } from "react";
import RatedWork from "~/app/_components/rated-work";
import { Filters } from "~/app/_components/filters";
import { LoadingRatingList } from "~/app/_components/loading-rating-list";
import { type MediaType } from "~/app/_models/works";

type RatedWorksProps = {
  mediaType: MediaType;
};

export default function RatedWorks({ mediaType }: RatedWorksProps) {
  const [filters, setFilters] = useState<FiltersType>(filtersInitialState);
  const observerTarget = useRef(null);

  const handleConfirm = (filters: FiltersType) => {
    setFilters(filters);
  };

  const {
    data,
    fetchNextPage,
    hasNextPage,
    isFetchingNextPage,
    isFetching,
    refetch,
  } = api.work.getInfiniteWorks.useInfiniteQuery(
    {
      limit: 10,
      type: mediaType,
      director: filters.director,
      genre: filters.genre,
      minYear: filters.minYear,
      maxYear: filters.maxYear,
    },
    {
      getNextPageParam: (lastPage) => lastPage.nextCursor,
    },
  );

  useEffect(() => {
    // eslint-disable-next-line @typescript-eslint/no-floating-promises
    refetch();
  }, [filters, refetch]);

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

  const works = data?.pages.flatMap((p) => p.works) ?? [];

  return (
    <div className="w-full">
      <div className="flex justify-end p-4">
        <Filters mediaType={mediaType} onConfirm={handleConfirm} />
      </div>

      {isFetching && <LoadingRatingList />}

      {!isFetching && works.length !== 0 && (
        <div className="flex flex-col rounded-lg border-2 border-gray-700 bg-gray-800/20">
          {works
            .filter((w) => !!w)
            .map((work, index) => (
              <RatedWork
                key={work.id}
                mediaType={mediaType}
                work={work}
                index={index}
              />
            ))}
        </div>
      )}

      {!isFetching && works.length === 0 && (
        <div className="flex h-32 items-center justify-center text-gray-400">
          Nessuna opera è stata ancora votata.
        </div>
      )}

      <div ref={observerTarget} className="flex justify-center p-4">
        {isFetchingNextPage ? (
          <div className="h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-green-600"></div>
        ) : null}
      </div>
    </div>
  );
}
