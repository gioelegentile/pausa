"use client";

import { useSession } from "next-auth/react";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import Link from "next/link";
import Image from "next/image";
import { PlusCircleIcon, EyeIcon, TrashIcon, StarIcon } from "@heroicons/react/24/outline";

// Dati di esempio per simulare una watchlist
const mockWatchlist = [
  {
    id: 122906,
    title: "The Lord of the Rings: The Fellowship of the Ring",
    posterPath: "/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg",
    releaseDate: "2001-12-19",
    type: "movie",
    addedAt: "2023-03-01T10:30:00Z",
    priority: "high",
  },
  {
    id: 84773,
    title: "The Queen's Gambit",
    posterPath: "/zU0htwkhNvBQdVSIKB9s6hgVeFK.jpg",
    releaseDate: "2020-10-23",
    type: "tv",
    addedAt: "2023-03-15T14:20:00Z",
    priority: "medium",
  },
  {
    id: 13023,
    title: "Arcane",
    posterPath: "/xQ6GijOFnxTyUzqiwGpVxgfcgqI.jpg",
    releaseDate: "2021-11-06",
    type: "tv",
    addedAt: "2023-04-05T09:15:00Z",
    priority: "high",
  },
  {
    id: 43065,
    title: "Death Note",
    posterPath: "/g8hNPGTZ8ci8RkYUQeBkdQX9Pks.jpg",
    releaseDate: "2006-10-03",
    type: "anime",
    addedAt: "2023-04-10T16:45:00Z",
    priority: "low",
  },
  {
    id: 71007,
    title: "Interstellar",
    posterPath: "/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
    releaseDate: "2014-11-05",
    type: "movie",
    addedAt: "2023-05-01T11:30:00Z",
    priority: "medium",
  },
];

export default function WatchlistPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [watchlist, setWatchlist] = useState(mockWatchlist);
  const [filters, setFilters] = useState({
    type: "all",
    priority: "all",
  });

  // Reindirizza alla home se l'utente non è autenticato
  useEffect(() => {
    if (status === "unauthenticated") {
      router.push("/");
    }
  }, [status, router]);

  // Funzione per rimuovere un elemento dalla watchlist
  const removeFromWatchlist = (id: number) => {
    setWatchlist(watchlist.filter((item) => item.id !== id));
  };

  // Funzione per contrassegnare un elemento come visto
  const markAsWatched = (id: number) => {
    // In un'implementazione reale, qui imposteresti lo stato nella tua API
    alert(`Elemento ${id} contrassegnato come visto!`);
    // Rimuovi dall'elenco dopo aver segnato come visto
    removeFromWatchlist(id);
  };

  // Filtra gli elementi in base ai filtri selezionati
  const filteredWatchlist = watchlist.filter((item) => {
    const typeMatch = filters.type === "all" || item.type === filters.type;
    const priorityMatch = filters.priority === "all" || item.priority === filters.priority;
    return typeMatch && priorityMatch;
  });

  // Funzione per cambiare la priorità di un elemento
  const changePriority = (id: number, newPriority: string) => {
    setWatchlist(
      watchlist.map((item) =>
        item.id === id ? { ...item, priority: newPriority } : item
      )
    );
  };

  if (status === "loading") {
    return (
      <div className="flex h-screen items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-indigo-500"></div>
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <div className="flex justify-between items-center mb-8">
        <h1 className="text-3xl font-bold text-gray-900">La mia Watchlist</h1>
        
        <Link
          href="/"
          className="flex items-center px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition-colors"
        >
          <PlusCircleIcon className="h-5 w-5 mr-2" />
          Aggiungi nuovi titoli
        </Link>
      </div>

      {/* Filtri */}
      <div className="bg-white shadow-md rounded-lg p-4 mb-8">
        <div className="flex flex-wrap items-center gap-4">
          <div>
            <label htmlFor="typeFilter" className="block text-sm font-medium text-gray-700 mb-1">
              Tipo
            </label>
            <select
              id="typeFilter"
              value={filters.type}
              onChange={(e) => setFilters({ ...filters, type: e.target.value })}
              className="mt-1 block w-40 pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md"
            >
              <option value="all">Tutti</option>
              <option value="movie">Film</option>
              <option value="tv">Serie TV</option>
              <option value="anime">Anime</option>
            </select>
          </div>
          
          <div>
            <label htmlFor="priorityFilter" className="block text-sm font-medium text-gray-700 mb-1">
              Priorità
            </label>
            <select
              id="priorityFilter"
              value={filters.priority}
              onChange={(e) => setFilters({ ...filters, priority: e.target.value })}
              className="mt-1 block w-40 pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md"
            >
              <option value="all">Tutte</option>
              <option value="high">Alta</option>
              <option value="medium">Media</option>
              <option value="low">Bassa</option>
            </select>
          </div>
        </div>
      </div>

      {/* Elenco della watchlist */}
      <div className="bg-white shadow-md rounded-lg overflow-hidden">
        {filteredWatchlist.length > 0 ? (
          <div className="divide-y divide-gray-200">
            {filteredWatchlist.map((item) => (
              <div key={item.id} className="p-4 flex items-center space-x-4">
                {/* Poster */}
                <div className="flex-shrink-0 w-16 h-24 relative rounded-md overflow-hidden">
                  <Image
                    src={`https://image.tmdb.org/t/p/w200${item.posterPath}`}
                    alt={item.title}
                    fill
                    sizes="(max-width: 64px) 100vw"
                    className="object-cover"
                  />
                </div>
                
                {/* Informazioni sul titolo */}
                <div className="flex-1 min-w-0">
                  <Link
                    href={`/details/${item.type}/${item.id}`}
                    className="text-lg font-semibold text-gray-900 hover:text-indigo-600"
                  >
                    {item.title}
                  </Link>
                  
                  <div className="mt-1 flex items-center">
                    <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium ${
                      item.type === "movie" 
                        ? "bg-blue-100 text-blue-800" 
                        : item.type === "tv" 
                          ? "bg-purple-100 text-purple-800"
                          : "bg-orange-100 text-orange-800"
                    }`}>
                      {item.type === "movie" ? "Film" : item.type === "tv" ? "Serie TV" : "Anime"}
                    </span>
                    <span className="ml-2 text-sm text-gray-500">
                      {new Date(item.releaseDate).getFullYear()}
                    </span>
                    <span className="ml-2 text-sm text-gray-500">
                      • Aggiunto il {new Date(item.addedAt).toLocaleDateString()}
                    </span>
                  </div>
                  
                  <div className="mt-2">
                    <select
                      value={item.priority}
                      onChange={(e) => changePriority(item.id, e.target.value)}
                      className={`text-xs border rounded py-1 px-2 ${
                        item.priority === "high" 
                          ? "border-red-300 text-red-800 bg-red-50" 
                          : item.priority === "medium" 
                            ? "border-yellow-300 text-yellow-800 bg-yellow-50" 
                            : "border-green-300 text-green-800 bg-green-50"
                      }`}
                    >
                      <option value="high">Alta priorità</option>
                      <option value="medium">Media priorità</option>
                      <option value="low">Bassa priorità</option>
                    </select>
                  </div>
                </div>
                
                {/* Azioni */}
                <div className="flex-shrink-0 flex space-x-2">
                  <button
                    onClick={() => markAsWatched(item.id)}
                    className="inline-flex items-center p-2 border border-green-300 rounded-full text-green-700 hover:bg-green-50"
                    title="Segna come visto"
                  >
                    <EyeIcon className="h-5 w-5" />
                  </button>
                  <button
                    onClick={() => removeFromWatchlist(item.id)}
                    className="inline-flex items-center p-2 border border-red-300 rounded-full text-red-700 hover:bg-red-50"
                    title="Rimuovi dalla watchlist"
                  >
                    <TrashIcon className="h-5 w-5" />
                  </button>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="p-8 text-center">
            <div className="inline-flex items-center justify-center h-16 w-16 rounded-full bg-indigo-100 mb-4">
              <StarIcon className="h-8 w-8 text-indigo-600" />
            </div>
            <h3 className="text-lg font-medium text-gray-900">Watchlist vuota</h3>
            <p className="mt-2 text-sm text-gray-500">
              Non hai ancora aggiunto nessun titolo alla tua watchlist o nessun titolo corrisponde ai filtri selezionati.
            </p>
            <div className="mt-6">
              <Link
                href="/"
                className="inline-flex items-center px-4 py-2 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-indigo-600 hover:bg-indigo-700"
              >
                <PlusCircleIcon className="h-5 w-5 mr-2" />
                Aggiungi titoli
              </Link>
            </div>
          </div>
        )}
      </div>
    </div>
  );
} 