"use client";

import { api } from "~/trpc/react";
import { type MediaType } from "../models/types";
import React, {useCallback, useState} from "react";
import { Filters } from "~/app/_components/filters";
import RatedWorksList from "~/app/_components/rated-works-list";

type RatedWorksProps = {
  mediaType: MediaType;
};

export default function RatedWorks({ mediaType }: RatedWorksProps) {
  const [page, setPage] = useState(0);

  const directors = api.work.getAllUniqueDirectors.useQuery(mediaType);

  const { data, isLoading, fetchNextPage, fetchPreviousPage } =
    api.work.getAllRatedByType.useInfiniteQuery(
      {
        limit: 10,
        type: mediaType,
        sorting: [{ orderBy: "createdAt", orderDirection: "desc" }],
      },
      {
        getNextPageParam: (lastPage) => lastPage.nextCursor,
      },
    );

  // console.log(data?.pages[0]?.works);
  // if (data?.pages[1])
  //   console.log(data?.pages[1]?.works);
  //
  console.log(page);

  const handleFetchNextPage = useCallback(async () => {
    await fetchNextPage();
    setPage((prev) => prev + 1);
  }, []);

  const handleFetchPreviousPage = useCallback(async () => {
    // await fetchPreviousPage();
    setPage((prev) => prev - 1);
  }, []);

  return (
    <div>
      <div className="flex justify-end p-4">
        {!directors.isLoading && <Filters directors={directors.data} />}
      </div>
      <div className="flex flex-col rounded-lg border-2 border-gray-700 bg-gray-800/20">
        <RatedWorksList
          mediaType={mediaType}
          works={data?.pages[page]?.works ?? []}
          onEndReached={handleFetchNextPage}
          onTopReached={handleFetchPreviousPage}
        />
        {isLoading && (
          <div className="flex items-center justify-center p-4">
            <div className="loader" />
          </div>
        )}
      </div>
    </div>
  );
}
