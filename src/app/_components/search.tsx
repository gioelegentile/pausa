"use client";

import { useCallback, useMemo, useState } from "react";
import { Work } from "./work";
import { type Movie, type MoviesResponse } from "../api/search/route";
import {
  MagnifyingGlassIcon,
  FilmIcon,
  TvIcon,
} from "@heroicons/react/24/outline";
import { FireIcon } from "@heroicons/react/24/solid";

type MediaType = "movie" | "tvshow" | "anime" | "game";

export function Search() {
  const searchInitialState = useMemo(
    () => ({
      page: 0,
      results: [],
      total_pages: 0,
      total_results: 0,
    }),
    [],
  );

  const [searchText, setSearchText] = useState("");
  const [searching, setIsSearching] = useState(false);
  const [searchResult, setSearchResult] =
    useState<MoviesResponse>(searchInitialState);
  const [topRatedMedia, setTopRatedMedia] = useState<Movie[]>([]);
  const [isLoadingTopRated, setIsLoadingTopRated] = useState(true);
  const [hasSearched, setHasSearched] = useState(false);

  // Stato per il tipo di media selezionato
  const [mediaType, setMediaType] = useState<MediaType>("movie");

  const handleReset = () => {
    setSearchText("");
    setSearchResult(searchInitialState);
    setHasSearched(false);
  };

  const handleSearch = useCallback(() => {
    if (!searchText.trim()) return;

    setHasSearched(true);
    setIsSearching(true);

    if (mediaType === "movie") {
      fetch(`/api/search?query=${encodeURIComponent(searchText)}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Failed to search movies");
          }
          return response.json();
        })
        .then((data: MoviesResponse) => {
          console.log(data);
          setSearchResult(data);
        })
        .catch((error) => {
          console.error("Error searching movies:", error);
          setSearchResult(searchInitialState);
        })
        .finally(() => {
          setIsSearching(false);
        });
    } else if (mediaType === "tvshow") {
      setIsSearching(false);
    } else if (mediaType === "anime") {
      setIsSearching(false);
    } else if (mediaType === "game") {
      setIsSearching(false);
    }
  }, [searchText, mediaType, searchInitialState]);

  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === "Enter") {
      e.preventDefault();
      handleSearch();
    }
  };

  // Funzione per ottenere il titolo in base al tipo di media
  const getMediaTitle = (type: MediaType): string => {
    switch (type) {
      case "movie":
        return "Movies";
      case "tvshow":
        return "TV Shows";
      case "anime":
        return "Anime";
      case "game":
        return "Games";
      default:
        return "Movies";
    }
  };

  return (
    <div className="mx-auto w-full max-w-7xl px-4 py-8 sm:px-6 lg:px-8">
      {/* Header con titolo */}
      <div className="mb-8 text-center">
        <h1 className="mb-2 text-4xl font-extrabold text-gray-900 dark:text-white">
          <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-transparent">
            {getMediaTitle(mediaType)}
          </span>
        </h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          Discover and rate your favorite entertainment
        </p>
      </div>

      {/* Pulsanti di selezione del tipo di media */}
      <div className="mb-8 flex justify-center">
        <div className="flex space-x-4">
          <button
            type="button"
            onClick={() => setMediaType("movie")}
            className={`rounded-lg px-6 py-2.5 text-sm font-medium transition-all duration-200 ${
              mediaType === "movie"
                ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
            }`}
          >
            <div className="flex items-center">
              <FilmIcon className="mr-2 h-5 w-5" />
              Movies
            </div>
          </button>
          <button
            type="button"
            onClick={() => setMediaType("tvshow")}
            className={`rounded-lg px-6 py-2.5 text-sm font-medium transition-all duration-200 ${
              mediaType === "tvshow"
                ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
            }`}
          >
            <div className="flex items-center">
              <TvIcon className="mr-2 h-5 w-5" />
              TV Shows
            </div>
          </button>
          <button
            type="button"
            onClick={() => setMediaType("anime")}
            className={`rounded-lg px-6 py-2.5 text-sm font-medium transition-all duration-200 ${
              mediaType === "anime"
                ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
            }`}
          >
            <div className="flex items-center">
              <FireIcon className="mr-2 h-5 w-5" />
              Anime
            </div>
          </button>
          <button
            type="button"
            onClick={() => setMediaType("game")}
            className={`rounded-lg px-6 py-2.5 text-sm font-medium transition-all duration-200 ${
              mediaType === "game"
                ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
            }`}
          >
            <div className="flex items-center">
              <FireIcon className="mr-2 h-5 w-5" />
              Games
            </div>
          </button>
        </div>
      </div>

      {/* Barra di ricerca */}
      <div className="mx-auto mb-12 max-w-3xl">
        <div className="flex flex-col gap-2 sm:flex-row">
          <div className="relative flex-grow">
            <div className="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
              <MagnifyingGlassIcon className="h-5 w-5 text-gray-400" />
            </div>
            <input
              type="text"
              placeholder={`Search ${getMediaTitle(mediaType).toLowerCase()}...`}
              value={searchText}
              onChange={(e) => setSearchText(e.target.value)}
              onKeyDown={handleKeyDown}
              className="focus:ring-opacity-50 w-full rounded-lg border border-gray-300 bg-white px-4 py-3 pl-10 text-gray-700 shadow-sm transition-all focus:border-indigo-500 focus:ring focus:ring-indigo-200 dark:border-gray-700 dark:bg-gray-800 dark:text-white"
            />
          </div>
          <button
            type="button"
            className="rounded-lg bg-gradient-to-br from-purple-600 to-blue-500 px-6 py-3 font-medium text-white shadow-md transition-all hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300"
            disabled={searching || !searchText.trim()}
            onClick={handleSearch}
          >
            {searching ? (
              <div className="flex items-center justify-center">
                <svg
                  className="mr-2 -ml-1 h-4 w-4 animate-spin text-white"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                >
                  <circle
                    className="opacity-25"
                    cx="12"
                    cy="12"
                    r="10"
                    stroke="currentColor"
                    strokeWidth="4"
                  ></circle>
                  <path
                    className="opacity-75"
                    fill="currentColor"
                    d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                  ></path>
                </svg>
                Searching...
              </div>
            ) : (
              "Search"
            )}
          </button>
          <button
            type="button"
            className="rounded-lg bg-gray-200 px-6 py-3 font-medium text-gray-800 shadow-md transition-all hover:bg-gray-300 focus:ring-4 focus:ring-gray-300 dark:bg-gray-700 dark:text-white dark:hover:bg-gray-600"
            onClick={handleReset}
            disabled={!searchText && !hasSearched}
          >
            Reset
          </button>
        </div>
      </div>

      {/* Risultati della ricerca */}
      {searchResult.results.length > 0 && (
        <div className="mb-16">
          <h2 className="mb-6 text-2xl font-bold text-gray-900 dark:text-white">
            Search Results
          </h2>
          <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 md:gap-6 lg:grid-cols-6">
            {searchResult.results.map((result: Movie) => (
              <div
                className="transition ease-in-out hover:z-10 hover:scale-105"
                key={result.id}
              >
                <Work data={result} mediaType={mediaType} />
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Contenuti con i voti più alti */}
      {topRatedMedia.length > 0 && searchResult.results.length === 0 && (
        <div>
          <h2 className="mb-6 text-2xl font-bold text-gray-900 dark:text-white">
            {mediaType === "anime"
              ? "Top Anime"
              : `Top Rated ${getMediaTitle(mediaType)}`}
          </h2>
          {isLoadingTopRated ? (
            <div className="flex h-64 items-center justify-center">
              <div className="h-12 w-12 animate-spin rounded-full border-t-2 border-b-2 border-indigo-500"></div>
            </div>
          ) : (
            <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 md:gap-6 lg:grid-cols-6">
              {topRatedMedia.map((media: Movie) => (
                <div
                  className="transition ease-in-out hover:z-10 hover:scale-105"
                  key={media.id}
                >
                  <Work data={media} mediaType={mediaType} />
                </div>
              ))}
            </div>
          )}
        </div>
      )}

      {/* Messaggio quando non ci sono risultati */}
      {hasSearched &&
        searchResult.results.length === 0 &&
        searchText &&
        !searching && (
          <div className="py-12 text-center">
            <p className="text-xl text-gray-600 dark:text-gray-400">
              No results found for &#34;{searchText}&#34;
            </p>
          </div>
        )}
    </div>
  );
}
