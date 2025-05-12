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
import { StaleTimes } from "~/app/_utils/stale-times";

type RatedWorksProps = {
  mediaType: MediaType;
};

export default function RatedWorks({ mediaType }: RatedWorksProps) {
  const [filters, setFilters] = useState<FiltersType>(filtersInitialState);
  const observerTarget = useRef(null);
  const [isLoadingMore, setIsLoadingMore] = useState(false);

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
      staleTime: StaleTimes.ONE_DAY,
    },
  );

  useEffect(() => {
    // eslint-disable-next-line @typescript-eslint/no-floating-promises
    refetch();
  }, [filters, refetch]);

  useEffect(() => {
    const loadMoreItems = async () => {
      setIsLoadingMore(true);
      await fetchNextPage();
      setIsLoadingMore(false);
    };

    const observer = new IntersectionObserver(
      (entries) => {
        if (entries[0]?.isIntersecting && hasNextPage && !isFetchingNextPage && !isLoadingMore) {
          // eslint-disable-next-line @typescript-eslint/no-floating-promises
          loadMoreItems();
        }
      },
      { threshold: 0.5, rootMargin: "100px" },
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
  }, [fetchNextPage, hasNextPage, isFetchingNextPage, isLoadingMore]);

  const works = data?.pages.flatMap((p) => p.works) ?? [];

  return (
    <div className="w-full">
      <div className="flex justify-end p-4">
        <Filters mediaType={mediaType} onConfirm={handleConfirm} />
      </div>

      {isFetching && !isFetchingNextPage && <LoadingRatingList />}

      {(!isFetching || isFetchingNextPage) && works.length !== 0 && (
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

      <div ref={observerTarget} className="flex justify-center p-4" aria-hidden="true">
        {isFetchingNextPage && (
          <div className="h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-green-600"></div>
        )}
      </div>
    </div>
  );
}
