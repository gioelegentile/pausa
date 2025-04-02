"use client";

import { useCallback, useMemo, useState } from "react";
import { Work } from "./work";
import { type Movie, type MoviesResponse } from "../api/search/route";

export function Search() {
  const searchInitialState = useMemo(() => ({
    page: 0,
    results: [],
    total_pages: 0,
    total_results: 0,
  }), []);

  const [searchText, setSearchText] = useState("");
  const [searching, setIsSearching] = useState(false);
  const [searchResult, setSearchResult] = useState<MoviesResponse>(searchInitialState);

  const handleSearch = useCallback(() => {
    if (!searchText.trim()) return;

    setIsSearching(true);

    fetch(`/api/search?query=${encodeURIComponent(searchText)}`)
      .then((response) => {
        if (!response.ok) {
          throw new Error('Failed to search movies');
        }
        return response.json();
      })
      .then((data: MoviesResponse) => {
        console.log(data);
        setSearchResult(data);
      })
      .catch((error) => {
        console.error('Error searching movies:', error);
        setSearchResult(searchInitialState);
      })
      .finally(() => {
        setIsSearching(false);
      });
  }, [searchText, setIsSearching, setSearchResult, searchInitialState]);

  return (
    <div className="relative mt-4 w-full p-10">
      <form
        onSubmit={(e) => {
          e.preventDefault();
          handleSearch();
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
        >
          {searching ? "Searching..." : "Search"}
        </button>
      </form>
      <div className="mt-12 grid grid-cols-2 place-content-center gap-2 md:grid-cols-6 md:gap-6">
        {searchResult.results.length > 0 &&
          searchResult.results.map((result: Movie) => (
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
