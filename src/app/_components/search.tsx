"use client";

import { useCallback, useEffect, useMemo, useState, useRef } from "react";
import { Work } from "./work";
import { type Movie, type MoviesResponse } from "../api/movies/route";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faFilm, faTv, faGamepad, faMagnifyingGlass, faArrowLeft } from "@fortawesome/free-solid-svg-icons";
import Image from "next/image";
import Reset from "./reset-search";
import { Work as WorkModel } from "@prisma/client";
import { Rating } from "./rating";
import RatingDialog from "./rating-dialog";

type MediaType = "movie" | "tvshow" | "anime" | "game";

// Debounce utility function
// eslint-disable-next-line @typescript-eslint/no-explicit-any
function useDebounce<T extends (...args: any[]) => any>(
  callback: T,
  delay: number
): (...args: Parameters<T>) => void {
  const timerRef = useRef<NodeJS.Timeout | null>(null);

  return useCallback(
    (...args: Parameters<T>) => {
      if (timerRef.current) {
        clearTimeout(timerRef.current);
      }

      timerRef.current = setTimeout(() => {
        callback(...args);
      }, delay);
    },
    [callback, delay]
  );
}

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
  const [hasSearched, setHasSearched] = useState(false);
  const [isSearchFocused, setIsSearchFocused] = useState(false);
  const [isMobile, setIsMobile] = useState(false);
  const [voting, setVoting] = useState(false);
  const [selectedWork, setSelectedWork] = useState<Movie | null>(null);

  const handleVoting = (work: Movie) => {
    setVoting(true);
    setSelectedWork(work);
  }

  // Stato per il tipo di media selezionato
  const [mediaType, setMediaType] = useState<MediaType>("movie");

  // Check if we're on mobile
  useEffect(() => {
    const checkIfMobile = () => {
      setIsMobile(window.innerWidth < 768);
    };

    // Initial check
    checkIfMobile();

    // Set up listener for resize
    window.addEventListener('resize', checkIfMobile);

    // Handle back button press
    const handlePopState = () => {
      if (isSearchFocused) {
        setIsSearchFocused(false);
      }
    };

    window.addEventListener('popstate', handlePopState);

    return () => {
      window.removeEventListener('resize', checkIfMobile);
      window.removeEventListener('popstate', handlePopState);
    };
  }, [isSearchFocused]);

  const handleSearchFocus = useCallback(() => {
    if (isMobile) {
      setIsSearchFocused(true);
      // Add history entry to handle back button
      window.history.pushState({ searchFocused: true }, '');
    }
  }, [isMobile]);

  const handleExitSearchFocus = useCallback(() => {
    if (isSearchFocused) {
      window.history.back(); // This will trigger the popstate event handler
    }
  }, [isSearchFocused]);

  const handleSearch = useCallback(() => {
    if (!searchText.trim()) {
      // Clear results if search text is empty
      setSearchResult(searchInitialState);
      return;
    }

    setHasSearched(true);
    setIsSearching(true);

    if (mediaType === "movie") {
      fetch(`/api/movies?query=${encodeURIComponent(searchText)}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Failed to search movies");
          }
          return response.json();
        })
        .then((data: MoviesResponse) => {
          setSearchResult(data);
        })
        .catch((error) => {
          console.error("Error searching movies:", error);
          setSearchResult(searchInitialState);
        })
        .finally(() => {
          setIsSearching(false);
        });
    } else if (mediaType === "tvshow" || mediaType === "anime") {
      fetch(`/api/tvshow?query=${encodeURIComponent(searchText)}&type=${mediaType}`)
        .then((response) => {
          if (!response.ok) {
            throw new Error("Failed to search serie TV");
          }
          return response.json();
        })
        .then((data: MoviesResponse) => {
          setSearchResult(data);
        })
        .catch((error) => {
          console.error("Error searching serie TV:", error);
          setSearchResult(searchInitialState);
        })
        .finally(() => {
          setIsSearching(false);
        });
    } else if (mediaType === "game") {
      setIsSearching(false);
    }
  }, [searchText, mediaType, searchInitialState]);

  // Debounced search function - triggers search after 500ms of typing inactivity
  const debouncedSearch = useDebounce(handleSearch, 500);

  // Trigger search when text changes
  useEffect(() => {
    debouncedSearch();
  }, [searchText, debouncedSearch]);

  // Handle text input change
  const handleTextChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setSearchText(e.target.value);
  };

  // Funzione per resettare la ricerca
  const handleReset = useCallback(() => {
    setSearchText("");
    setSearchResult(searchInitialState);
    setHasSearched(false);
  }, [searchInitialState]);

  const handleMediaTypeChange = (type: MediaType) => {
    setMediaType(type);
    handleReset(); // resetta la ricerca quando cambi tipo
  };

  // Funzione per ottenere il titolo in base al tipo di media
  const getMediaTitle = (type: MediaType): string => {
    switch (type) {
      case "movie":
        return "Film";
      case "tvshow":
        return "Serie TV";
      case "anime":
        return "Anime";
      case "game":
        return "Videogiochi";
      default:
        return "Film";
    }
  };

  return (
    <div className="mx-auto w-full max-w-7xl px-4 py-8 sm:px-6 lg:px-8">
      {/* Header con titolo */}
      <div className={`mt-20 mb-8 text-center  ${isSearchFocused ? 'hidden' : 'block'}`}>
        <h1 className="mb-2 text-4xl font-extrabold text-gray-900 dark:text-white">
          <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-transparent">
            {getMediaTitle(mediaType)}
          </span>
        </h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          Scopri e vota i tuoi preferiti
        </p>
      </div>

      {/* Pulsanti di selezione del tipo di media */}
      <div className={`mb-8 flex justify-center  ${isSearchFocused ? 'hidden' : 'block'}`}>
        <div className="flex space-x-2">
          <button
            type="button"
            onClick={() => handleMediaTypeChange("movie")}
            className={`rounded-lg px-4 py-2.5 text-sm font-medium transition-all duration-200 ${mediaType === "movie"
              ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
              : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
              }`}
          >
            <div className="flex flex-col items-center sm:flex-row">
              <span className="sm:order-1 order-2 sm:ml-2 mt-1 sm:mt-0">Film</span>
              <FontAwesomeIcon icon={faFilm} className="h-5 w-5 order-1 sm:order-0" />
            </div>
          </button>
          <button
            type="button"
            onClick={() => handleMediaTypeChange("tvshow")}
            className={`rounded-lg px-4 py-2.5 text-sm font-medium transition-all duration-200 ${mediaType === "tvshow"
              ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
              : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
              }`}
          >
            <div className="flex flex-col items-center sm:flex-row">
              <span className="sm:order-1 order-2 sm:ml-2 mt-1 sm:mt-0 whitespace-nowrap">Serie TV</span>
              <FontAwesomeIcon icon={faTv} className="h-5 w-5 order-1 sm:order-0" />
            </div>
          </button>
          <button
            type="button"
            onClick={() => handleMediaTypeChange("anime")}
            className={` rounded-lg px-4 py-2.5 text-sm font-medium transition-all duration-200 ${mediaType === "anime"
              ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
              : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
              }`}
          >
            <div className="flex flex-col items-center sm:flex-row">
              <span className="sm:order-1 order-2 sm:ml-2 mt-1 sm:mt-0">Anime</span>
              <Image
                src="/naruto-119-svgrepo-com.svg"
                alt="Naruto Icon"
                width={15}
                height={15}
                className="xl:mr-2 brightness-0 invert filter order-1 sm:order-0"
                style={{
                  filter:
                    mediaType === "anime"
                      ? "brightness(0) invert(1)"
                      : "brightness(0) opacity(0.1)", // TODO change to opacity(0.6) when issue #13 is done
                }}
              />
            </div>
          </button>
          <button
            disabled
            type="button"
            onClick={() => handleMediaTypeChange("game")}
            className={`disabled:text-gray-200 disabled:border-gray-100 rounded-lg px-4 py-2.5 text-sm font-medium transition-all duration-200 ${mediaType === "game"
              ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
              : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow"
              }`}
          >
            <div className="flex flex-col items-center sm:flex-row">
              <span className="sm:order-1 order-2 sm:ml-2 mt-1 sm:mt-0">Videogiochi</span>
              <FontAwesomeIcon icon={faGamepad} className="h-5 w-5 order-1 sm:order-0" />
              <span className="order-3 [font-variant:small-caps] text-[8px] text-red-500 dark:text-gray-400 whitespace-nowrap lg:ml-2">
                coming soon
              </span>
            </div>
          </button>
        </div>
      </div>

      {/* Barra di ricerca */}
      <div className={` ${isSearchFocused
        ? 'fixed top-0 left-0 right-0 z-50 bg-white dark:bg-gray-900 py-3 px-4'
        : 'mx-auto mb-12 max-w-3xl'
        }`}>
        <div className="flex items-center">
          {isSearchFocused && (
            <button
              type="button"
              onClick={handleExitSearchFocus}
              className="flex items-center text-gray-600 mr-2 p-2"
            >
              <FontAwesomeIcon icon={faArrowLeft} className="h-5 w-5" />
            </button>
          )}
          <div className="relative flex-grow">
            <div className="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
              <FontAwesomeIcon icon={faMagnifyingGlass} className="h-5 w-5 text-gray-400" />
            </div>
            {searching && (
              <div className="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-3">
                <div className="h-4 w-4 animate-spin rounded-full border-2 border-gray-300 border-t-indigo-600"></div>
              </div>
            )}
            <input
              type="text"
              placeholder={`Cerca ${getMediaTitle(mediaType).toLowerCase()}...`}
              value={searchText}
              onChange={handleTextChange}
              onFocus={handleSearchFocus}
              className="focus:ring-opacity-50 w-full rounded-lg border border-gray-300 bg-white px-4 py-3 pl-10 text-gray-700 shadow-sm transition-all focus:border-indigo-500 focus:ring focus:ring-indigo-200 dark:border-gray-700 dark:bg-gray-800 dark:text-white"
            />
            {searchText.length > 0 && <Reset onClick={handleReset} disabled={false} />}
          </div>
        </div>
      </div>

      {/* Risultati della ricerca */}
      {searchResult.results.length > 0 && (
        <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 md:gap-6 lg:grid-cols-6">
          {searchResult.results.map((result: Movie) => (
            <div
              className="transition ease-in-out hover:z-10 hover:scale-105"
              key={result.id}
            >
              <Work data={result} onClickVoting={() => handleVoting(result)} mediaType={mediaType} />
            </div>
          ))}
        </div>
      )}

      {/* Messaggio quando non ci sono risultati */}
      {hasSearched && searchResult.results.length === 0 && searchText && !searching && (
        <div className="text-center py-12">
          <p className="text-xl text-gray-600 dark:text-gray-400">
            Nessun risultato trovato per &#34;{searchText}&#34;
          </p>
        </div>
      )}

      {voting && selectedWork && (
        <RatingDialog
          onClose={() => setVoting(false)}
          data={selectedWork}
          mediaType={mediaType}
        />
      )}
    </div>
  );
}
