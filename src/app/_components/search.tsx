"use client";

import { useCallback, useState } from "react";
import theMovieDb, { Movie, type MoviesResponse } from "~/server/tmdb/tmdbapi";

import { Work } from "./work";

export function Search() {
  // const [ratedWorks] = api.work.getAllRated.useSuspenseQuery([
  //   {
  //     orderBy: 'createdAt',
  //     orderDirection: 'desc'
  //   }
  // ]);

  // const utils = api.useUtils();
  const searchInitialState = {
    page: 0,
    results: [],
    total_pages: 0,
    total_results: 0,
  };

  const [searchText, setSearchText] = useState("");
  const [searching, setIsSearching] = useState(false);
  const [searchResult, setSearchResult] =
    useState<MoviesResponse>(searchInitialState);

  // const createPost = api.work.create.useMutation({
  //   onSuccess: async () => {
  //     await utils.work.invalidate();
  //     setName("");
  //   },
  // });

  const handleClick = useCallback(() => {
    setIsSearching(true);
    theMovieDb.search.getMovie(
      {
        query: searchText,
      },
      (res: string) => {
        const parsed: MoviesResponse = JSON.parse(res);
        parsed.results = parsed.results.slice(0, 18);
        console.log(parsed);
        setSearchResult(parsed);
        setIsSearching(false);
      },
      (err: any) => {
        console.log(err);
        setSearchResult(searchInitialState);
        setIsSearching(false);
      },
    );
  }, [searchText, setIsSearching, setSearchResult]);

  return (
    <div className="relative mt-4 w-full p-10">
      <form
        onSubmit={(e) => {
          e.preventDefault();
          // createPost.mutate({ name });
        }}
        className="flex flex-row gap-2"
      >
        <input
          type="text"
          placeholder="Title"
          value={searchText}
          onChange={(e) => setSearchText(e.target.value)}
          className="w-full rounded-full bg-gray-800 px-4 py-2 text-sm font-medium text-white hover:bg-gray-900 focus:ring-4 focus:ring-gray-300 focus:outline-none dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700"
        />
        <button
          type="submit"
          className="me-2 mb-2 rounded-full bg-gray-800 px-5 py-2.5 text-sm font-medium text-white hover:bg-gray-900 focus:ring-4 focus:ring-gray-300 focus:outline-none dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700"
          disabled={searching}
          onClick={handleClick}
        >
          {searching ? "Searching..." : "Search"}
        </button>
      </form>
      <div className="mt-12 grid grid-cols-2 place-content-center gap-2 md:grid-cols-6 md:gap-6">
        {searchResult.results.length > 0 &&
          searchResult.results.map((result: any) => (
            <div
              className="transition ease-in-out hover:scale-105"
              key={result.id}
            >
              <Work data={result} />
            </div>
          ))}
      </div>
    </div>
  );
}
