"use client";

import { useSession } from "next-auth/react";
import { useRouter } from "next/navigation";
import { useEffect } from "react";
import { api } from "~/trpc/react";

export default function DashboardPage() {
  const { data: session, status } = useSession();
  const router = useRouter();

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

  // Query per ottenere i commenti dell'utente
  const userComments = api.comment.getByUser.useQuery(undefined, {
    enabled: !!session?.user,
  });

  if (status === "loading") {
    return (
      <div className="flex h-screen items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-indigo-500"></div>
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <h1 className="text-3xl font-bold mb-8 text-gray-900">Dashboard</h1>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
        {/* Statistiche */}
        <div className="bg-white shadow-md rounded-lg p-6">
          <h2 className="text-xl font-semibold mb-4 text-gray-800">Statistiche</h2>
          <div className="grid grid-cols-2 gap-4">
            <div className="bg-indigo-50 p-4 rounded-lg">
              <p className="text-sm text-indigo-800">Valutazioni</p>
              <p className="text-2xl font-bold text-indigo-600">
                {userRatings.isLoading ? "..." : userRatings.data?.length || 0}
              </p>
            </div>
            <div className="bg-purple-50 p-4 rounded-lg">
              <p className="text-sm text-purple-800">Commenti</p>
              <p className="text-2xl font-bold text-purple-600">
                {userComments.isLoading ? "..." : userComments.data?.length || 0}
              </p>
            </div>
          </div>
        </div>

        {/* Attività recente */}
        <div className="bg-white shadow-md rounded-lg p-6">
          <h2 className="text-xl font-semibold mb-4 text-gray-800">Attività recente</h2>
          <div className="space-y-3">
            {userRatings.isLoading ? (
              <p className="text-gray-500">Caricamento...</p>
            ) : userRatings.data && userRatings.data.length > 0 ? (
              userRatings.data.slice(0, 3).map((rating) => (
                <div key={rating.id} className="flex items-center space-x-2">
                  <div className="h-2 w-2 rounded-full bg-green-500"></div>
                  <p className="text-sm text-gray-600">
                    Hai valutato un titolo con {rating.rating} stelle
                  </p>
                </div>
              ))
            ) : (
              <p className="text-gray-500">Nessuna attività recente</p>
            )}
          </div>
        </div>

        {/* Generi preferiti */}
        <div className="bg-white shadow-md rounded-lg p-6">
          <h2 className="text-xl font-semibold mb-4 text-gray-800">Generi preferiti</h2>
          <div className="flex flex-wrap gap-2">
            <span className="px-3 py-1 bg-blue-100 text-blue-800 rounded-full text-sm">
              Fantascienza
            </span>
            <span className="px-3 py-1 bg-red-100 text-red-800 rounded-full text-sm">
              Azione
            </span>
            <span className="px-3 py-1 bg-green-100 text-green-800 rounded-full text-sm">
              Documentari
            </span>
            <span className="px-3 py-1 bg-yellow-100 text-yellow-800 rounded-full text-sm">
              Commedia
            </span>
          </div>
        </div>
      </div>

      {/* Ultime valutazioni */}
      <div className="bg-white shadow-md rounded-lg p-6 mb-8">
        <h2 className="text-xl font-semibold mb-4 text-gray-800">Le tue ultime valutazioni</h2>
        {userRatings.isLoading ? (
          <div className="flex justify-center py-4">
            <div className="animate-spin rounded-full h-8 w-8 border-t-2 border-b-2 border-indigo-500"></div>
          </div>
        ) : userRatings.data && userRatings.data.length > 0 ? (
          <div className="overflow-x-auto">
            <table className="min-w-full divide-y divide-gray-200">
              <thead>
                <tr>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    TMDB ID
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Valutazione
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Data
                  </th>
                </tr>
              </thead>
              <tbody className="bg-white divide-y divide-gray-200">
                {userRatings.data.map((rating) => (
                  <tr key={rating.id}>
                    <td className="px-4 py-2 whitespace-nowrap text-sm text-gray-600">
                      {rating.tmdbId}
                    </td>
                    <td className="px-4 py-2 whitespace-nowrap">
                      <div className="flex items-center">
                        {Array.from({ length: 5 }).map((_, i) => (
                          <svg
                            key={i}
                            className={`h-4 w-4 ${
                              i < rating.rating
                                ? "text-yellow-400"
                                : "text-gray-300"
                            }`}
                            fill="currentColor"
                            viewBox="0 0 20 20"
                            xmlns="http://www.w3.org/2000/svg"
                          >
                            <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                          </svg>
                        ))}
                      </div>
                    </td>
                    <td className="px-4 py-2 whitespace-nowrap text-sm text-gray-600">
                      {new Date(rating.updatedAt).toLocaleDateString()}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ) : (
          <p className="text-center py-4 text-gray-500">
            Non hai ancora valutato nessun titolo.
          </p>
        )}
      </div>

      {/* Ultimi commenti */}
      <div className="bg-white shadow-md rounded-lg p-6">
        <h2 className="text-xl font-semibold mb-4 text-gray-800">I tuoi ultimi commenti</h2>
        {userComments.isLoading ? (
          <div className="flex justify-center py-4">
            <div className="animate-spin rounded-full h-8 w-8 border-t-2 border-b-2 border-indigo-500"></div>
          </div>
        ) : userComments.data && userComments.data.length > 0 ? (
          <div className="space-y-4">
            {userComments.data.map((comment) => (
              <div key={comment.id} className="border-l-4 border-indigo-500 pl-4 py-2">
                <p className="text-gray-600 text-sm">{comment.content}</p>
                <p className="text-xs text-gray-400 mt-1">
                  TMDB ID: {comment.tmdbId} • {new Date(comment.createdAt).toLocaleDateString()}
                </p>
              </div>
            ))}
          </div>
        ) : (
          <p className="text-center py-4 text-gray-500">
            Non hai ancora lasciato nessun commento.
          </p>
        )}
      </div>
    </div>
  );
} 