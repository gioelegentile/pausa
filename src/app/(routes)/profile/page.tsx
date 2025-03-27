"use client";

import { useSession } from "next-auth/react";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { ChevronRightIcon, CogIcon, FilmIcon, TvIcon, UserCircleIcon, ChartBarIcon } from "@heroicons/react/24/outline";
import { api } from "~/trpc/react";
import Image from "next/image";

export default function ProfilePage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [activeTab, setActiveTab] = useState("profile");

  // Reindirizza alla home se l'utente non è autenticato
  useEffect(() => {
    if (status === "unauthenticated") {
      router.push("/");
    }
  }, [status, router]);

  // Query per ottenere le valutazioni dell'utente
  const userRatings = api.workRating.getByUser.useQuery(undefined, {
    enabled: !!session?.user,
  });

  // Tabs
  const tabs = [
    { id: "profile", label: "Profilo", icon: UserCircleIcon },
    { id: "preferences", label: "Preferenze", icon: CogIcon },
    { id: "stats", label: "Statistiche", icon: ChartBarIcon },
  ];

  if (status === "loading") {
    return (
      <div className="flex h-screen items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-indigo-500"></div>
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <h1 className="text-3xl font-bold mb-8 text-gray-900">Profilo</h1>

      <div className="bg-white shadow-md rounded-lg overflow-hidden">
        <div className="md:flex">
          {/* Barra laterale */}
          <div className="md:w-64 bg-gray-50 p-4 border-r border-gray-200">
            {/* Profilo utente */}
            <div className="flex items-center space-x-3 mb-6 p-3 bg-white rounded-lg shadow-sm">
              {session?.user?.image ? (
                <Image 
                  src={session.user.image} 
                  alt={session.user.name || "Utente"} 
                  width={48} 
                  height={48} 
                  className="rounded-full border-2 border-indigo-500"
                />
              ) : (
                <div className="w-12 h-12 bg-indigo-100 rounded-full flex items-center justify-center">
                  <UserCircleIcon className="h-8 w-8 text-indigo-600" />
                </div>
              )}
              <div>
                <p className="font-medium text-gray-900">{session?.user?.name || "Utente"}</p>
                <p className="text-sm text-gray-500">{session?.user?.email || ""}</p>
              </div>
            </div>

            {/* Tabs */}
            <nav className="space-y-1">
              {tabs.map((tab) => (
                <button
                  key={tab.id}
                  onClick={() => setActiveTab(tab.id)}
                  className={`flex items-center w-full px-3 py-2 text-sm font-medium rounded-md ${
                    activeTab === tab.id
                      ? "bg-indigo-50 text-indigo-700"
                      : "text-gray-700 hover:text-indigo-700 hover:bg-gray-100"
                  }`}
                >
                  <tab.icon
                    className={`mr-3 flex-shrink-0 h-5 w-5 ${
                      activeTab === tab.id
                        ? "text-indigo-500"
                        : "text-gray-500"
                    }`}
                  />
                  <span className="truncate">{tab.label}</span>
                  <ChevronRightIcon
                    className={`ml-auto h-4 w-4 ${
                      activeTab === tab.id
                        ? "text-indigo-500"
                        : "text-gray-400"
                    }`}
                  />
                </button>
              ))}
            </nav>

            {/* Statistiche rapide */}
            <div className="mt-8 p-4 bg-gray-100 rounded-lg">
              <h3 className="text-sm font-medium text-gray-500 mb-3">Statistiche</h3>
              <div className="space-y-3">
                <div className="flex justify-between">
                  <span className="text-xs text-gray-600">Valutazioni</span>
                  <span className="text-xs font-medium">
                    {userRatings.isLoading ? "..." : userRatings.data?.length || 0}
                  </span>
                </div>
                <div className="flex justify-between">
                  <span className="text-xs text-gray-600">Film</span>
                  <span className="text-xs font-medium">
                    {userRatings.isLoading
                      ? "..."
                      : userRatings.data?.filter(r => r.mediaType === "movie").length || 0}
                  </span>
                </div>
                <div className="flex justify-between">
                  <span className="text-xs text-gray-600">Serie TV</span>
                  <span className="text-xs font-medium">
                    {userRatings.isLoading
                      ? "..."
                      : userRatings.data?.filter(r => r.mediaType === "tv").length || 0}
                  </span>
                </div>
                <div className="flex justify-between">
                  <span className="text-xs text-gray-600">Anime</span>
                  <span className="text-xs font-medium">
                    {userRatings.isLoading
                      ? "..."
                      : userRatings.data?.filter(r => r.mediaType === "anime").length || 0}
                  </span>
                </div>
              </div>
            </div>
          </div>

          {/* Contenuto principale */}
          <div className="flex-1 p-6">
            {/* Scheda profilo */}
            {activeTab === "profile" && (
              <div>
                <h2 className="text-xl font-semibold mb-6 pb-2 border-b border-gray-200">
                  Informazioni profilo
                </h2>

                <div className="space-y-6">
                  <div>
                    <label className="block text-sm font-medium text-gray-700">Nome</label>
                    <div className="mt-1 flex items-center">
                      <input
                        type="text"
                        defaultValue={session?.user?.name || ""}
                        className="shadow-sm focus:ring-indigo-500 focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md"
                        placeholder="Il tuo nome"
                      />
                    </div>
                  </div>

                  <div>
                    <label className="block text-sm font-medium text-gray-700">Email</label>
                    <div className="mt-1 flex items-center">
                      <input
                        type="email"
                        defaultValue={session?.user?.email || ""}
                        disabled
                        className="shadow-sm focus:ring-indigo-500 focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md bg-gray-50"
                      />
                      <span className="ml-2 text-xs text-gray-500">Non modificabile</span>
                    </div>
                  </div>

                  <div>
                    <label className="block text-sm font-medium text-gray-700">Immagine profilo</label>
                    <div className="mt-1 flex items-center">
                      {session?.user?.image ? (
                        <div className="flex items-center">
                          <Image
                            src={session.user.image}
                            alt="Immagine profilo"
                            width={48}
                            height={48}
                            className="rounded-full"
                          />
                          <span className="ml-2 text-xs text-gray-500">
                            Immagine dal provider di autenticazione
                          </span>
                        </div>
                      ) : (
                        <div className="flex items-center">
                          <div className="w-12 h-12 bg-indigo-100 rounded-full flex items-center justify-center">
                            <UserCircleIcon className="h-8 w-8 text-indigo-600" />
                          </div>
                          <span className="ml-2 text-xs text-gray-500">
                            Nessuna immagine profilo
                          </span>
                        </div>
                      )}
                    </div>
                  </div>

                  <div className="pt-5">
                    <div className="flex justify-end">
                      <button
                        type="button"
                        className="ml-3 inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                      >
                        Salva modifiche
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            )}

            {/* Scheda preferenze */}
            {activeTab === "preferences" && (
              <div>
                <h2 className="text-xl font-semibold mb-6 pb-2 border-b border-gray-200">
                  Preferenze
                </h2>

                <div className="space-y-6">
                  <div>
                    <h3 className="text-lg font-medium text-gray-900">Tema</h3>
                    <p className="mt-1 text-sm text-gray-500">
                      Scegli il tema dell'applicazione
                    </p>
                    <div className="mt-3 space-x-4">
                      <div className="inline-flex items-center">
                        <input
                          id="theme-light"
                          name="theme"
                          type="radio"
                          defaultChecked
                          className="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300"
                        />
                        <label htmlFor="theme-light" className="ml-2 block text-sm text-gray-700">
                          Chiaro
                        </label>
                      </div>
                      <div className="inline-flex items-center">
                        <input
                          id="theme-dark"
                          name="theme"
                          type="radio"
                          className="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300"
                        />
                        <label htmlFor="theme-dark" className="ml-2 block text-sm text-gray-700">
                          Scuro
                        </label>
                      </div>
                      <div className="inline-flex items-center">
                        <input
                          id="theme-system"
                          name="theme"
                          type="radio"
                          className="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300"
                        />
                        <label htmlFor="theme-system" className="ml-2 block text-sm text-gray-700">
                          Sistema
                        </label>
                      </div>
                    </div>
                  </div>

                  <div>
                    <h3 className="text-lg font-medium text-gray-900">Notifiche</h3>
                    <p className="mt-1 text-sm text-gray-500">
                      Configura le tue preferenze per le notifiche
                    </p>
                    
                    <div className="mt-3 space-y-4">
                      <div className="flex items-start">
                        <div className="flex items-center h-5">
                          <input
                            id="notify-comments"
                            name="notify-comments"
                            type="checkbox"
                            defaultChecked
                            className="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded"
                          />
                        </div>
                        <div className="ml-3 text-sm">
                          <label htmlFor="notify-comments" className="font-medium text-gray-700">
                            Commenti
                          </label>
                          <p className="text-gray-500">
                            Ricevi notifiche quando qualcuno commenta i tuoi contenuti
                          </p>
                        </div>
                      </div>
                      
                      <div className="flex items-start">
                        <div className="flex items-center h-5">
                          <input
                            id="notify-watchlist"
                            name="notify-watchlist"
                            type="checkbox"
                            className="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded"
                          />
                        </div>
                        <div className="ml-3 text-sm">
                          <label htmlFor="notify-watchlist" className="font-medium text-gray-700">
                            Watchlist
                          </label>
                          <p className="text-gray-500">
                            Ricevi notifiche quando i contenuti nella tua watchlist diventano disponibili
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="pt-5">
                    <div className="flex justify-end">
                      <button
                        type="button"
                        className="ml-3 inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                      >
                        Salva preferenze
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            )}

            {/* Scheda statistiche */}
            {activeTab === "stats" && (
              <div>
                <h2 className="text-xl font-semibold mb-6 pb-2 border-b border-gray-200">
                  Le tue statistiche
                </h2>

                <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
                  <div className="bg-blue-50 rounded-lg p-4">
                    <div className="flex items-center">
                      <div className="p-3 rounded-full bg-blue-100 text-blue-600 mr-4">
                        <FilmIcon className="h-6 w-6" />
                      </div>
                      <div>
                        <p className="text-sm text-blue-800">Film</p>
                        <p className="text-2xl font-bold text-blue-900">
                          {userRatings.isLoading
                            ? "..."
                            : userRatings.data?.filter(r => r.mediaType === "movie").length || 0}
                        </p>
                      </div>
                    </div>
                  </div>
                  
                  <div className="bg-purple-50 rounded-lg p-4">
                    <div className="flex items-center">
                      <div className="p-3 rounded-full bg-purple-100 text-purple-600 mr-4">
                        <TvIcon className="h-6 w-6" />
                      </div>
                      <div>
                        <p className="text-sm text-purple-800">Serie TV</p>
                        <p className="text-2xl font-bold text-purple-900">
                          {userRatings.isLoading
                            ? "..."
                            : userRatings.data?.filter(r => r.mediaType === "tv").length || 0}
                        </p>
                      </div>
                    </div>
                  </div>
                  
                  <div className="bg-orange-50 rounded-lg p-4">
                    <div className="flex items-center">
                      <div className="p-3 rounded-full bg-orange-100 text-orange-600 mr-4">
                        <svg className="h-6 w-6" viewBox="0 0 24 24" fill="currentColor">
                          <path d="M12.5 2C8.92 2 6 4.92 6 8.5V12H5c-.55 0-1 .45-1 1v8c0 .55.45 1 1 1h15c.55 0 1-.45 1-1v-8c0-.55-.45-1-1-1h-1V8.5C19 4.92 16.08 2 12.5 2zm0 2c2.48 0 4.5 2.02 4.5 4.5V12h-9V8.5C8 6.02 10.02 4 12.5 4zm-3.5 10h7c.55 0 1 .45 1 1s-.45 1-1 1h-7c-.55 0-1-.45-1-1s.45-1 1-1z" />
                        </svg>
                      </div>
                      <div>
                        <p className="text-sm text-orange-800">Anime</p>
                        <p className="text-2xl font-bold text-orange-900">
                          {userRatings.isLoading
                            ? "..."
                            : userRatings.data?.filter(r => r.mediaType === "anime").length || 0}
                        </p>
                      </div>
                    </div>
                  </div>
                </div>

                <div className="bg-white border border-gray-200 rounded-lg p-4 mb-8">
                  <h3 className="text-lg font-medium mb-4">Distribuzione valutazioni</h3>
                  <div className="space-y-2">
                    {[5, 4, 3, 2, 1].map((rating) => {
                      const ratingCount = userRatings.data?.filter(r => Math.floor(r.rating) === rating).length || 0;
                      const totalRatings = userRatings.data?.length || 1;
                      const percentage = Math.round((ratingCount / totalRatings) * 100);
                      
                      return (
                        <div key={rating} className="flex items-center">
                          <div className="flex items-center w-12">
                            {Array.from({ length: rating }).map((_, i) => (
                              <svg
                                key={i}
                                className="h-4 w-4 text-yellow-400"
                                fill="currentColor"
                                viewBox="0 0 20 20"
                              >
                                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                              </svg>
                            ))}
                          </div>
                          <div className="w-full ml-4">
                            <div className="flex items-center">
                              <div className="w-full bg-gray-200 rounded-full h-2.5">
                                <div
                                  className="bg-yellow-400 h-2.5 rounded-full"
                                  style={{ width: `${percentage}%` }}
                                ></div>
                              </div>
                              <span className="ml-2 text-sm text-gray-600 w-10 text-right">
                                {ratingCount} ({percentage}%)
                              </span>
                            </div>
                          </div>
                        </div>
                      );
                    })}
                  </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  <div className="bg-white border border-gray-200 rounded-lg p-4">
                    <h3 className="text-lg font-medium mb-4">Generi preferiti</h3>
                    <ul className="space-y-2">
                      <li className="flex justify-between">
                        <span className="text-gray-600">Fantascienza</span>
                        <span className="font-medium">32%</span>
                      </li>
                      <li className="flex justify-between">
                        <span className="text-gray-600">Azione</span>
                        <span className="font-medium">24%</span>
                      </li>
                      <li className="flex justify-between">
                        <span className="text-gray-600">Drama</span>
                        <span className="font-medium">18%</span>
                      </li>
                      <li className="flex justify-between">
                        <span className="text-gray-600">Commedia</span>
                        <span className="font-medium">15%</span>
                      </li>
                      <li className="flex justify-between">
                        <span className="text-gray-600">Horror</span>
                        <span className="font-medium">11%</span>
                      </li>
                    </ul>
                  </div>
                  
                  <div className="bg-white border border-gray-200 rounded-lg p-4">
                    <h3 className="text-lg font-medium mb-4">Attività recenti</h3>
                    <div className="space-y-4">
                      <div className="flex items-start">
                        <div className="h-2 w-2 mt-2 rounded-full bg-indigo-500"></div>
                        <div className="ml-4">
                          <p className="text-sm font-medium text-gray-900">Hai valutato un film</p>
                          <p className="text-xs text-gray-500">2 giorni fa</p>
                        </div>
                      </div>
                      <div className="flex items-start">
                        <div className="h-2 w-2 mt-2 rounded-full bg-indigo-500"></div>
                        <div className="ml-4">
                          <p className="text-sm font-medium text-gray-900">Hai aggiunto un commento</p>
                          <p className="text-xs text-gray-500">4 giorni fa</p>
                        </div>
                      </div>
                      <div className="flex items-start">
                        <div className="h-2 w-2 mt-2 rounded-full bg-indigo-500"></div>
                        <div className="ml-4">
                          <p className="text-sm font-medium text-gray-900">Hai aggiunto un anime alla watchlist</p>
                          <p className="text-xs text-gray-500">1 settimana fa</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
} 