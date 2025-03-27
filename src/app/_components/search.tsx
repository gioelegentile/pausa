"use client";

import { useCallback, useState, useEffect } from "react";
import theMovieDb, { MoviesResponse, Movie } from "~/server/tmdb/tmdbapi";
import { Work } from "./work";
import { MagnifyingGlassIcon, FilmIcon, TvIcon } from "@heroicons/react/24/outline";
import { FireIcon } from "@heroicons/react/24/solid";

// Tipi di contenuto media
type MediaType = "movie" | "tv" | "anime";

// Lista di anime predefiniti
const TOP_ANIME = [
  "Steins;Gate",
  "Tengen Toppa Gurren Lagann",
  "Clannad",
  "Welcome to the NHK",
  "Attack on Titan",
  "Gintama",
  "Death Note",
  "Code Geass",
  "Psycho-Pass",
  "Re:Zero – Starting Life in Another World",
  "Fate/Zero",
  "Ergo Proxy"
];

export function Search() {
  const searchInitialState = {
    page: 0,
    results: [],
    total_pages: 0,
    total_results: 0,
  };

  const [searchText, setSearchText] = useState("");
  const [searching, setIsSearching] = useState(false);
  const [searchResult, setSearchResult] = useState<MoviesResponse>(searchInitialState);
  const [topRatedMedia, setTopRatedMedia] = useState<Movie[]>([]);
  const [isLoadingTopRated, setIsLoadingTopRated] = useState(true);
  
  // Stato per il tipo di media selezionato
  const [mediaType, setMediaType] = useState<MediaType>("movie");

  // Carica i contenuti con i voti più alti all'avvio in base al tipo di media selezionato
  useEffect(() => {
    setIsLoadingTopRated(true);
    setSearchResult(searchInitialState);
    
    if (mediaType === "movie") {
      theMovieDb.movies.getTopRated(
        {},
        (res: string) => {
          const parsed: MoviesResponse = JSON.parse(res);
          setTopRatedMedia(parsed.results.slice(0, 12));
          setIsLoadingTopRated(false);
        },
        (err: any) => {
          console.log(err);
          setIsLoadingTopRated(false);
        }
      );
    } else if (mediaType === "tv") {
      theMovieDb.tv.getTopRated(
        {},
        (res: string) => {
          const parsed: MoviesResponse = JSON.parse(res);
          setTopRatedMedia(parsed.results.slice(0, 12));
          setIsLoadingTopRated(false);
        },
        (err: any) => {
          console.log(err);
          setIsLoadingTopRated(false);
        }
      );
    } else if (mediaType === "anime") {
      // Per gli anime, utilizziamo una lista predefinita anziché l'API
      const fetchSpecificAnime = async () => {
        try {
          // Creiamo un array per contenere i risultati delle ricerche
          let animeResults: Movie[] = [];
          
          // Cerchiamo ogni anime individualmente
          for (const animeTitle of TOP_ANIME) {
            // Utilizziamo una Promise per wrappare la chiamata callback-based di TMDB
            const result = await new Promise<any>((resolve, reject) => {
              theMovieDb.search.getTv(
                { query: animeTitle, include_adult: "false" },
                (res: string) => {
                  const parsed = JSON.parse(res);
                  // Prendiamo solo il primo risultato per ogni anime
                  if (parsed.results && parsed.results.length > 0) {
                    resolve(parsed.results[0]);
                  } else {
                    resolve(null);
                  }
                },
                (err: any) => {
                  console.error(`Error fetching ${animeTitle}:`, err);
                  resolve(null);
                }
              );
            });
            
            if (result) {
              animeResults.push(result);
            }
          }
          
          // Filtriamo eventuali risultati nulli
          animeResults = animeResults.filter(Boolean);
          
          // Assegniamo i risultati agli anime top-rated
          setTopRatedMedia(animeResults);
          setIsLoadingTopRated(false);
        } catch (error) {
          console.error("Error fetching anime list:", error);
          setIsLoadingTopRated(false);
        }
      };
      
      fetchSpecificAnime();
    }
  }, [mediaType]);

  const handleSearch = useCallback(() => {
    if (!searchText.trim()) return;
    
    setIsSearching(true);
    
    if (mediaType === "movie") {
      theMovieDb.search.getMovie(
        { query: searchText },
        (res: string) => {
          const parsed: MoviesResponse = JSON.parse(res);
          parsed.results = parsed.results.slice(0, 18);
          setSearchResult(parsed);
          setIsSearching(false);
        },
        (err: any) => {
          console.log(err);
          setSearchResult(searchInitialState);
          setIsSearching(false);
        }
      );
    } else if (mediaType === "tv") {
      theMovieDb.search.getTv(
        { query: searchText },
        (res: string) => {
          const parsed: MoviesResponse = JSON.parse(res);
          // Filtriamo per escludere anime dai risultati delle serie TV
          parsed.results = parsed.results
            .filter(item => 
              !(item.name?.toLowerCase().includes('anime') || 
                item.original_name?.toLowerCase().includes('anime') ||
                item.genre_ids?.includes(16)) // ID 16 è Animation
            )
            .slice(0, 18);
          setSearchResult(parsed);
          setIsSearching(false);
        },
        (err: any) => {
          console.log(err);
          setSearchResult(searchInitialState);
          setIsSearching(false);
        }
      );
    } else if (mediaType === "anime") {
      // Utilizziamo la stessa modalità di ricerca che abbiamo usato per i top anime
      const fetchAnimeSearch = async () => {
        try {
          // Prima, cerchiamo serie TV che corrispondono al termine di ricerca + "anime"
          const animeResults = await new Promise<Movie[]>((resolve, reject) => {
            theMovieDb.search.getTv(
              { query: `${searchText} anime` },
              (res: string) => {
                const parsed = JSON.parse(res);
                resolve(parsed.results || []);
              },
              (err: any) => {
                console.error(`Error searching for anime:`, err);
                resolve([]);
              }
            );
          });
          
          // Poi, cerchiamo serie TV che corrispondono al termine di ricerca
          const regularResults = await new Promise<Movie[]>((resolve, reject) => {
            theMovieDb.search.getTv(
              { query: searchText },
              (res: string) => {
                const parsed = JSON.parse(res);
                // Filtriamo per includere solo potenziali anime
                const filteredResults = (parsed.results || []).filter(item => 
                  // Controllo per parole chiave legate ad anime nei titoli
                  item.name?.toLowerCase().includes('anime') ||
                  item.original_name?.toLowerCase().includes('anime') ||
                  // O è un'animazione (ID genere 16)
                  item.genre_ids?.includes(16) ||
                  // O proviene dal Giappone
                  item.origin_country?.includes('JP')
                );
                resolve(filteredResults);
              },
              (err: any) => {
                console.error(`Error searching for anime:`, err);
                resolve([]);
              }
            );
          });
          
          // Combiniamo e rimuoviamo duplicati (basandoci sugli ID)
          const allResults = [...animeResults];
          regularResults.forEach(item => {
            if (!allResults.some(existing => existing.id === item.id)) {
              allResults.push(item);
            }
          });
          
          const parsed: MoviesResponse = {
            ...searchInitialState,
            results: allResults.slice(0, 18)
          };
          
          setSearchResult(parsed);
          setIsSearching(false);
        } catch (error) {
          console.error("Error fetching anime search:", error);
          setSearchResult(searchInitialState);
          setIsSearching(false);
        }
      };
      
      fetchAnimeSearch();
    }
  }, [searchText, mediaType]);

  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      handleSearch();
    }
  };

  // Funzione per ottenere il titolo in base al tipo di media
  const getMediaTitle = (type: MediaType): string => {
    switch (type) {
      case "movie": return "Movies";
      case "tv": return "TV Shows";
      case "anime": return "Anime";
      default: return "Movies";
    }
  };

  return (
    <div className="w-full max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      {/* Header con titolo */}
      <div className="text-center mb-8">
        <h1 className="text-4xl font-extrabold text-gray-900 dark:text-white mb-2">
          <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-transparent">
            {getMediaTitle(mediaType)}
          </span>
        </h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          Discover and rate your favorite entertainment
        </p>
      </div>

      {/* Pulsanti di selezione del tipo di media */}
      <div className="flex justify-center mb-8">
        <div className="flex space-x-4">
          <button
            type="button"
            onClick={() => setMediaType("movie")}
            className={`px-6 py-2.5 rounded-lg text-sm font-medium transition-all duration-200 ${
              mediaType === "movie"
                ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                : "bg-white text-gray-700 border border-gray-300 hover:text-indigo-600 hover:border-indigo-400 hover:shadow"
            }`}
          >
            <div className="flex items-center">
              <FilmIcon className="h-5 w-5 mr-2" />
              Movies
            </div>
          </button>
          <button
            type="button"
            onClick={() => setMediaType("tv")}
            className={`px-6 py-2.5 rounded-lg text-sm font-medium transition-all duration-200 ${
              mediaType === "tv"
                ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                : "bg-white text-gray-700 border border-gray-300 hover:text-indigo-600 hover:border-indigo-400 hover:shadow"
            }`}
          >
            <div className="flex items-center">
              <TvIcon className="h-5 w-5 mr-2" />
              TV Shows
            </div>
          </button>
          <button
            type="button"
            onClick={() => setMediaType("anime")}
            className={`px-6 py-2.5 rounded-lg text-sm font-medium transition-all duration-200 ${
              mediaType === "anime"
                ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
                : "bg-white text-gray-700 border border-gray-300 hover:text-indigo-600 hover:border-indigo-400 hover:shadow"
            }`}
          >
            <div className="flex items-center">
              <FireIcon className="h-5 w-5 mr-2" />
              Anime
            </div>
          </button>
        </div>
      </div>

      {/* Barra di ricerca */}
      <div className="max-w-3xl mx-auto mb-12">
        <div className="flex flex-col sm:flex-row gap-2">
          <div className="relative flex-grow">
            <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
              <MagnifyingGlassIcon className="h-5 w-5 text-gray-400" />
            </div>
            <input
              type="text"
              placeholder={`Search ${getMediaTitle(mediaType).toLowerCase()}...`}
              value={searchText}
              onChange={(e) => setSearchText(e.target.value)}
              onKeyDown={handleKeyDown}
              className="w-full pl-10 rounded-lg bg-white dark:bg-gray-800 border border-gray-300 dark:border-gray-700 px-4 py-3 text-gray-700 dark:text-white shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 transition-all"
            />
          </div>
          <button
            type="button"
            className="rounded-lg bg-gradient-to-br from-purple-600 to-blue-500 px-6 py-3 text-white font-medium shadow-md hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300 transition-all"
            disabled={searching || !searchText.trim()}
            onClick={handleSearch}
          >
            {searching ? (
              <div className="flex items-center justify-center">
                <svg className="animate-spin -ml-1 mr-2 h-4 w-4 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                  <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle>
                  <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                </svg>
                Searching...
              </div>
            ) : "Search"}
          </button>
        </div>
      </div>

      {/* Risultati della ricerca */}
      {searchResult.results.length > 0 && (
        <div className="mb-16">
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-6">
            Search Results
          </h2>
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-4 md:gap-6">
            {searchResult.results.map((result: Movie) => (
              <div
                className="transition ease-in-out hover:scale-105 hover:z-10"
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
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-6">
            {mediaType === "anime" ? "Top Anime" : `Top Rated ${getMediaTitle(mediaType)}`}
          </h2>
          {isLoadingTopRated ? (
            <div className="flex justify-center items-center h-64">
              <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-indigo-500"></div>
            </div>
          ) : (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-4 md:gap-6">
              {topRatedMedia.map((media: Movie) => (
                <div
                  className="transition ease-in-out hover:scale-105 hover:z-10"
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
      {searchResult.results.length === 0 && searchText && !searching && (
        <div className="text-center py-12">
          <p className="text-xl text-gray-600 dark:text-gray-400">
            No results found for "{searchText}"
          </p>
        </div>
      )}
    </div>
  );
}
