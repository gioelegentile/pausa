"use client";

import { useParams } from "next/navigation";
import { useState, useEffect } from "react";
import theMovieDb, { Movie } from "~/server/tmdb/tmdbapi";
import Image from "next/legacy/image";
import { StarIcon, HeartIcon } from "@heroicons/react/24/solid";
import { StarIcon as StarIconOutline } from "@heroicons/react/24/outline";
import { api } from "~/trpc/react";
import { Work as WorkType } from "@prisma/client";
import { Rating } from "~/app/_components/rating";
import moment from "moment";
import { useSession, signIn } from "next-auth/react";

interface DetailedMovie extends Movie {
  genres?: { id: number; name: string }[];
  credits?: {
    cast: {
      id: number;
      name: string;
      profile_path: string | null;
      character: string;
    }[];
    crew: {
      id: number;
      name: string;
      job: string;
    }[];
  };
  videos?: {
    results: {
      id: string;
      key: string;
      name: string;
      site: string;
      type: string;
    }[];
  };
}

interface Comment {
  id: string;
  content: string;
  createdAt: string;
  updatedAt: string;
  userId: string;
  user: {
    name: string | null;
    image: string | null;
  };
}

export default function DetailPage() {
  const params = useParams();
  const mediaId = Number(params.id);
  const mediaType = params.mediaType as "movie" | "tv" | "anime";
  
  const [details, setDetails] = useState<DetailedMovie | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  
  const [rate, setRate] = useState(0);
  const [hoveredStar, setHoveredStar] = useState(0);
  const [isRating, setIsRating] = useState(false);

  // Commenti
  const [newComment, setNewComment] = useState("");
  const [isSubmittingComment, setIsSubmittingComment] = useState(false);

  // TRPC hooks
  const workMutation = api.work.create.useMutation();
  const ratingMutation = api.workRating.create.useMutation();
  const workQuery = api.work.getByTmdbId.useQuery(mediaId);
  const rating = api.workRating.getByTmdbId.useQuery(mediaId);
  
  // Hook per i commenti
  const commentsQuery = api.comment.getByTmdbId.useQuery(mediaId);
  const createCommentMutation = api.comment.create.useMutation();
  const deleteCommentMutation = api.comment.delete.useMutation();
  const { data: session } = useSession();

  useEffect(() => {
    if (workQuery.data && rating.data) {
      setRate(rating.data.rating);
    }
  }, [workQuery.data, rating.data]);

  const handleSetRate = async (newRate: number) => {
    try {
      setRate(newRate);
      setIsRating(false);

      if (newRate > 0) {
        let work: WorkType | null = null;

        if (workQuery.data) {
          work = workQuery.data;
        } else if (workMutation.mutateAsync) {
          await workMutation.mutateAsync({ tmdbId: mediaId });
          // Ricarica i dati del work dopo la mutazione
          if (workQuery.refetch) {
            const newWorkData = await workQuery.refetch();
            work = newWorkData.data || null;
          } else {
            console.error("workQuery.refetch is not available");
            return;
          }
        } else {
          console.error("workMutation.mutateAsync is not available");
          return;
        }

        if (work && ratingMutation.mutateAsync) {
          try {
            await ratingMutation.mutateAsync({ 
              tmdbId: mediaId, 
              workId: work.id, 
              rating: newRate 
            });
          } catch (error) {
            console.error("Error rating media:", error);
            alert("Si è verificato un errore durante la valutazione. Riprova più tardi.");
          }
        } else {
          console.error("ratingMutation.mutateAsync is not available or work is null");
          alert("Si è verificato un errore con l'API. Riprova più tardi.");
        }
      }
    } catch (error) {
      console.error("Errore in handleSetRate:", error);
      alert("Si è verificato un errore imprevisto. Riprova più tardi.");
      setIsRating(false);
    }
  };

  useEffect(() => {
    const fetchMediaDetails = async () => {
      setLoading(true);
      
      try {
        let detailsFetchFn;
        
        // Determina la funzione da utilizzare in base al tipo di media
        if (mediaType === "movie") {
          detailsFetchFn = theMovieDb.movies.getById;
        } else if (mediaType === "tv" || mediaType === "anime") {
          detailsFetchFn = theMovieDb.tv.getById;
        } else {
          throw new Error("Tipo di media non supportato");
        }
        
        // Recupera i dettagli dell'opera
        const mediaDetails = await new Promise<DetailedMovie>((resolve, reject) => {
          detailsFetchFn(
            { 
              id: mediaId,
              append_to_response: "credits,videos"
            },
            (res: string) => {
              const parsed = JSON.parse(res);
              resolve(parsed);
            },
            (err: any) => {
              reject(err);
            }
          );
        });
        
        setDetails(mediaDetails);
      } catch (err) {
        console.error("Error fetching details:", err);
        setError("Si è verificato un errore durante il caricamento dei dettagli.");
      } finally {
        setLoading(false);
      }
    };
    
    if (mediaId) {
      fetchMediaDetails();
    }
  }, [mediaId, mediaType]);

  const addComment = async () => {
    if (!newComment.trim()) return;
    
    setIsSubmittingComment(true);
    
    try {
      // Verifica se l'utente è autenticato
      if (!session || !session.user) {
        alert("Devi essere loggato per commentare.");
        setIsSubmittingComment(false);
        return;
      }
      
      // Verifica se esiste già un'opera per questo mediaId, altrimenti creala
      let work = workQuery.data;
      
      if (!work) {
        if (!workMutation.mutateAsync) {
          throw new Error("API non disponibile");
        }
        
        await workMutation.mutateAsync({ tmdbId: mediaId });
        // Ricarica i dati del work
        if (!workQuery.refetch) {
          throw new Error("API di refetch non disponibile");
        }
        
        const newWorkData = await workQuery.refetch();
        work = newWorkData.data || null;
      }
      
      if (work) {
        // Verifica se l'API per creare commenti è disponibile
        if (!createCommentMutation.mutateAsync) {
          throw new Error("API per i commenti non disponibile");
        }
        
        // Ora possiamo aggiungere il commento
        await createCommentMutation.mutateAsync({
          workId: work.id,
          tmdbId: mediaId,
          content: newComment
        });
        
        // Aggiorna la lista dei commenti se l'API è disponibile
        if (commentsQuery.refetch) {
          await commentsQuery.refetch();
        }
        
        // Resetta il campo di input
        setNewComment("");
      } else {
        throw new Error("Impossibile creare o trovare l'opera");
      }
    } catch (error: any) {
      console.error("Errore durante l'aggiunta del commento:", error);
      if (error.message?.includes("UNAUTHORIZED")) {
        alert("Devi essere loggato per commentare.");
      } else if (error.message?.includes("API non disponibile")) {
        alert("Il servizio non è al momento disponibile. Riprova più tardi.");
      } else {
        alert(`Si è verificato un errore: ${error.message || "Errore sconosciuto"}`);
      }
    } finally {
      setIsSubmittingComment(false);
    }
  };

  const handleDeleteComment = async (commentId: string) => {
    if (confirm("Sei sicuro di voler eliminare questo commento?")) {
      try {
        await deleteCommentMutation.mutateAsync(commentId);
        // Aggiorna la lista dei commenti
        await commentsQuery.refetch();
      } catch (error) {
        console.error("Errore durante l'eliminazione del commento:", error);
        alert("Si è verificato un errore durante l'eliminazione del commento.");
      }
    }
  };

  // Helper per ottenere il titolo corretto
  const getTitle = () => {
    if (!details) return "";
    return mediaType === "movie" ? details.title : (details.name || details.title || "");
  };

  // Helper per ottenere la data di rilascio/primo episodio
  const getReleaseDate = () => {
    if (!details) return "";
    return mediaType === "movie" ? details.release_date : (details.first_air_date || details.release_date || "");
  };

  // Trova trailer
  const getTrailerKey = () => {
    if (!details?.videos?.results) return null;
    
    const trailer = details.videos.results.find(
      video => video.site === "YouTube" && 
      (video.type === "Trailer" || video.type === "Teaser")
    );
    
    return trailer?.key || null;
  };

  // Formatta la data
  const formatDate = (dateString: string) => {
    if (!dateString) return "";
    return moment(dateString).format("DD MMMM YYYY");
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center min-h-screen">
        <div className="animate-spin rounded-full h-16 w-16 border-t-2 border-b-2 border-indigo-500"></div>
      </div>
    );
  }

  if (error || !details) {
    return (
      <div className="flex flex-col items-center justify-center min-h-screen px-4">
        <h1 className="text-2xl font-bold text-red-500 mb-4">
          {error || "Impossibile caricare i dettagli"}
        </h1>
        <button 
          onClick={() => window.history.back()}
          className="px-6 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 transition-colors"
        >
          Torna indietro
        </button>
      </div>
    );
  }

  const trailerKey = getTrailerKey();
  
  return (
    <div className="bg-gray-100 dark:bg-gray-900 min-h-screen pb-16">
      {/* Banner con immagine di sfondo */}
      <div className="relative w-full h-[50vh]">
        {details.backdrop_path ? (
          <Image
            src={`https://image.tmdb.org/t/p/original${details.backdrop_path}`}
            alt={getTitle()}
            layout="fill"
            objectFit="cover"
            priority
          />
        ) : (
          <div className="absolute inset-0 bg-gradient-to-r from-blue-900 to-purple-900"></div>
        )}
        
        {/* Overlay scuro sfumato */}
        <div className="absolute inset-0 bg-gradient-to-t from-gray-900 via-gray-900/70 to-transparent"></div>
        
        {/* Contenuto sopra l'immagine */}
        <div className="absolute inset-0 flex items-end">
          <div className="container mx-auto px-4 pb-8 flex flex-col md:flex-row items-end md:items-end gap-8">
            {/* Poster */}
            <div className="relative w-40 h-60 md:w-60 md:h-90 -mb-20 rounded-lg overflow-hidden shadow-xl border-4 border-white dark:border-gray-800">
              {details.poster_path ? (
                <Image
                  src={`https://image.tmdb.org/t/p/w500${details.poster_path}`}
                  alt={getTitle()}
                  layout="fill"
                  objectFit="cover"
                />
              ) : (
                <div className="w-full h-full bg-gradient-to-br from-gray-700 to-gray-900 flex items-center justify-center">
                  <span className="text-white text-xl">Nessun poster</span>
                </div>
              )}
            </div>
            
            {/* Titolo e informazioni base */}
            <div className="flex-1 text-white">
              <h1 className="text-3xl md:text-5xl font-bold">{getTitle()}</h1>
              <div className="flex flex-wrap items-center gap-3 mt-2">
                {getReleaseDate() && (
                  <span className="text-gray-300">
                    {formatDate(getReleaseDate())}
                  </span>
                )}
                {details.genres?.map(genre => (
                  <span 
                    key={genre.id} 
                    className="px-3 py-1 bg-indigo-600/80 rounded-full text-sm"
                  >
                    {genre.name}
                  </span>
                ))}
                
                {/* Valutazione media */}
                {details.vote_average > 0 && (
                  <div className="flex items-center gap-1 px-3 py-1 bg-yellow-600/80 rounded-full">
                    <StarIcon className="h-4 w-4 text-yellow-300" />
                    <span className="text-sm font-medium">{details.vote_average.toFixed(1)}/10</span>
                    <span className="text-xs text-gray-300 ml-1">({details.vote_count})</span>
                  </div>
                )}
              </div>
              
              {/* Pulsanti di azione */}
              <div className="flex gap-3 mt-5">
                <button 
                  onClick={() => {
                    if (!session) {
                      signIn();
                      return;
                    }
                    setIsRating(!isRating);
                  }}
                  className="flex items-center gap-1 px-4 py-2 bg-indigo-600 hover:bg-indigo-700 rounded-md transition-colors"
                >
                  <StarIconOutline className="h-5 w-5" />
                  {rate > 0 ? `Il tuo voto: ${rate}/5` : "Vota"}
                </button>
                {/* Qui è possibile aggiungere altri pulsanti di azione */}
              </div>
            </div>
          </div>
        </div>
      </div>
      
      {/* Popup di votazione */}
      {isRating && (
        <div className="fixed inset-0 flex items-center justify-center bg-black/50 z-50">
          <div className="bg-white dark:bg-gray-800 p-6 rounded-lg shadow-xl w-80">
            <h3 className="text-xl font-bold text-center mb-4 dark:text-white">Valuta {getTitle()}</h3>
            <div className="flex justify-center space-x-2 mb-6">
              {[1, 2, 3, 4, 5].map((star) => (
                <StarIcon 
                  key={star}
                  className={`h-10 w-10 cursor-pointer transition-all ${
                    star <= (hoveredStar || rate) 
                      ? 'text-yellow-400' 
                      : 'text-gray-300 dark:text-gray-600'
                  }`} 
                  onClick={() => handleSetRate(star)}
                  onMouseEnter={() => setHoveredStar(star)} 
                  onMouseLeave={() => setHoveredStar(0)}
                />
              ))}
            </div>
            <div className="flex justify-end gap-2">
              <button 
                onClick={() => setIsRating(false)}
                className="px-4 py-2 text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md"
              >
                Annulla
              </button>
              <button 
                onClick={() => handleSetRate(0)}
                className="px-4 py-2 text-white bg-red-600 hover:bg-red-700 rounded-md"
              >
                Rimuovi voto
              </button>
            </div>
          </div>
        </div>
      )}
      
      {/* Contenuto principale */}
      <div className="container mx-auto px-4 pt-24 md:pt-16">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          {/* Colonna principale con trama e info */}
          <div className="lg:col-span-2">
            {/* Sinossi */}
            <section className="mb-12">
              <h2 className="text-2xl font-bold mb-4 dark:text-white">Trama</h2>
              <p className="text-gray-700 dark:text-gray-300 leading-relaxed">
                {details.overview || "Nessuna descrizione disponibile."}
              </p>
            </section>
            
            {/* Trailer */}
            {trailerKey && (
              <section className="mb-12">
                <h2 className="text-2xl font-bold mb-4 dark:text-white">Trailer</h2>
                <div className="aspect-w-16 aspect-h-9">
                  <iframe
                    src={`https://www.youtube.com/embed/${trailerKey}`}
                    title="Trailer"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowFullScreen
                    className="w-full h-full rounded-lg shadow-lg"
                  ></iframe>
                </div>
              </section>
            )}
            
            {/* Cast */}
            {details.credits?.cast?.length > 0 && (
              <section className="mb-12">
                <h2 className="text-2xl font-bold mb-4 dark:text-white">Cast principale</h2>
                <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4">
                  {details.credits.cast.slice(0, 8).map(actor => (
                    <div key={actor.id} className="bg-white dark:bg-gray-800 rounded-lg shadow overflow-hidden">
                      {actor.profile_path ? (
                        <div className="relative h-48 w-full">
                          <Image
                            src={`https://image.tmdb.org/t/p/w185${actor.profile_path}`}
                            alt={actor.name}
                            layout="fill"
                            objectFit="cover"
                          />
                        </div>
                      ) : (
                        <div className="h-48 w-full bg-gray-200 dark:bg-gray-700 flex items-center justify-center">
                          <span className="text-gray-500 dark:text-gray-400">Nessuna immagine</span>
                        </div>
                      )}
                      <div className="p-3">
                        <h3 className="font-medium text-gray-900 dark:text-white">{actor.name}</h3>
                        <p className="text-sm text-gray-600 dark:text-gray-400">{actor.character}</p>
                      </div>
                    </div>
                  ))}
                </div>
              </section>
            )}
            
            {/* Sezione commenti */}
            <section className="mb-12">
              <h2 className="text-2xl font-bold mb-6 dark:text-white">Commenti</h2>
              
              {/* Form per aggiungere commento */}
              <div className="bg-white dark:bg-gray-800 p-4 rounded-lg shadow-md mb-6">
                {session ? (
                  <>
                    <textarea
                      value={newComment}
                      onChange={(e) => setNewComment(e.target.value)}
                      placeholder="Scrivi un commento..."
                      className="w-full p-3 border border-gray-300 dark:border-gray-700 rounded-md dark:bg-gray-700 dark:text-white focus:outline-none focus:ring-2 focus:ring-indigo-500"
                      rows={3}
                      disabled={isSubmittingComment}
                    ></textarea>
                    <div className="flex justify-end mt-2">
                      <button
                        onClick={addComment}
                        disabled={!newComment.trim() || isSubmittingComment}
                        className="px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 disabled:opacity-50 disabled:cursor-not-allowed transition-colors"
                      >
                        {isSubmittingComment ? (
                          <span className="flex items-center">
                            <svg className="animate-spin -ml-1 mr-2 h-4 w-4 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                              <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle>
                              <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                            </svg>
                            Pubblicazione...
                          </span>
                        ) : "Pubblica"}
                      </button>
                    </div>
                  </>
                ) : (
                  <div className="text-center py-4">
                    <p className="text-gray-600 dark:text-gray-300 mb-3">Devi accedere per lasciare un commento</p>
                    <button
                      onClick={() => signIn()}
                      className="px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 transition-colors"
                    >
                      Accedi
                    </button>
                  </div>
                )}
              </div>
              
              {/* Caricamento dei commenti */}
              {commentsQuery.isLoading ? (
                <div className="flex justify-center py-8">
                  <div className="animate-spin rounded-full h-8 w-8 border-t-2 border-b-2 border-indigo-500"></div>
                </div>
              ) : commentsQuery.data?.length === 0 ? (
                <p className="text-center text-gray-500 dark:text-gray-400 py-6">
                  Non ci sono ancora commenti. Sii il primo a commentare!
                </p>
              ) : (
                <div className="space-y-4">
                  {commentsQuery.data?.map(comment => (
                    <div key={comment.id} className="bg-white dark:bg-gray-800 p-4 rounded-lg shadow-md">
                      <div className="flex items-start gap-3">
                        {comment.user.image ? (
                          <div className="flex-shrink-0 w-10 h-10 rounded-full overflow-hidden">
                            <Image
                              src={comment.user.image}
                              alt={comment.user.name || "Utente"}
                              width={40}
                              height={40}
                              layout="responsive"
                            />
                          </div>
                        ) : (
                          <div className="flex-shrink-0 w-10 h-10 bg-indigo-500 rounded-full flex items-center justify-center">
                            <span className="text-white text-sm font-bold">
                              {(comment.user.name || "?").substring(0, 2).toUpperCase()}
                            </span>
                          </div>
                        )}
                        
                        <div className="flex-1">
                          <div className="flex items-center justify-between">
                            <h4 className="font-medium text-gray-900 dark:text-white">{comment.user.name || "Utente anonimo"}</h4>
                            <div className="flex items-center gap-2">
                              <span className="text-xs text-gray-500 dark:text-gray-400">
                                {moment(comment.createdAt).fromNow()}
                              </span>
                              
                              {/* Pulsante di eliminazione (se l'utente è il proprietario) */}
                              {session?.user?.id === comment.userId && (
                                <button 
                                  onClick={() => handleDeleteComment(comment.id)}
                                  className="text-xs text-red-500 hover:text-red-700 transition-colors"
                                >
                                  Elimina
                                </button>
                              )}
                            </div>
                          </div>
                          <p className="mt-1 text-gray-700 dark:text-gray-300">
                            {comment.content}
                          </p>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </section>
          </div>
          
          {/* Sidebar con informazioni extra */}
          <div className="lg:col-span-1">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 sticky top-24">
              <h3 className="text-xl font-bold mb-4 dark:text-white">Informazioni</h3>
              
              <div className="space-y-4">
                {/* Titolo originale */}
                {details.original_title && details.original_title !== details.title && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Titolo originale</h4>
                    <p className="font-medium dark:text-white">{details.original_title}</p>
                  </div>
                )}
                
                {/* Stato */}
                {details.status && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Stato</h4>
                    <p className="font-medium dark:text-white">{details.status}</p>
                  </div>
                )}
                
                {/* Lingua originale */}
                {details.original_language && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Lingua originale</h4>
                    <p className="font-medium dark:text-white">{details.original_language.toUpperCase()}</p>
                  </div>
                )}
                
                {/* Budget (solo per film) */}
                {mediaType === "movie" && details.budget > 0 && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Budget</h4>
                    <p className="font-medium dark:text-white">
                      ${details.budget.toLocaleString()}
                    </p>
                  </div>
                )}
                
                {/* Incasso (solo per film) */}
                {mediaType === "movie" && details.revenue > 0 && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Incasso</h4>
                    <p className="font-medium dark:text-white">
                      ${details.revenue.toLocaleString()}
                    </p>
                  </div>
                )}
                
                {/* Numero di stagioni (solo per serie TV) */}
                {(mediaType === "tv" || mediaType === "anime") && details.number_of_seasons > 0 && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Stagioni</h4>
                    <p className="font-medium dark:text-white">{details.number_of_seasons}</p>
                  </div>
                )}
                
                {/* Numero di episodi (solo per serie TV) */}
                {(mediaType === "tv" || mediaType === "anime") && details.number_of_episodes > 0 && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Episodi</h4>
                    <p className="font-medium dark:text-white">{details.number_of_episodes}</p>
                  </div>
                )}
                
                {/* Direttori e scrittori (solo per film) */}
                {mediaType === "movie" && details.credits?.crew && (
                  <>
                    {/* Registi */}
                    {details.credits.crew.some(person => person.job === "Director") && (
                      <div>
                        <h4 className="text-sm text-gray-500 dark:text-gray-400">Regia</h4>
                        <div>
                          {details.credits.crew
                            .filter(person => person.job === "Director")
                            .map(director => (
                              <p key={director.id} className="font-medium dark:text-white">
                                {director.name}
                              </p>
                            ))}
                        </div>
                      </div>
                    )}
                    
                    {/* Sceneggiatori */}
                    {details.credits.crew.some(person => person.job === "Screenplay" || person.job === "Writer") && (
                      <div>
                        <h4 className="text-sm text-gray-500 dark:text-gray-400">Sceneggiatura</h4>
                        <div>
                          {details.credits.crew
                            .filter(person => person.job === "Screenplay" || person.job === "Writer")
                            .map(writer => (
                              <p key={writer.id} className="font-medium dark:text-white">
                                {writer.name}
                              </p>
                            ))}
                        </div>
                      </div>
                    )}
                  </>
                )}
                
                {/* Creatori (solo per serie TV) */}
                {(mediaType === "tv" || mediaType === "anime") && details.created_by?.length > 0 && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Creatori</h4>
                    <div>
                      {details.created_by.map(creator => (
                        <p key={creator.id} className="font-medium dark:text-white">
                          {creator.name}
                        </p>
                      ))}
                    </div>
                  </div>
                )}
                
                {/* Reti TV (solo per serie TV) */}
                {(mediaType === "tv" || mediaType === "anime") && details.networks?.length > 0 && (
                  <div>
                    <h4 className="text-sm text-gray-500 dark:text-gray-400">Reti TV</h4>
                    <div className="flex flex-wrap gap-2 mt-1">
                      {details.networks.map(network => (
                        <div key={network.id} className="flex items-center">
                          {network.logo_path ? (
                            <Image
                              src={`https://image.tmdb.org/t/p/w92${network.logo_path}`}
                              alt={network.name}
                              width={50}
                              height={25}
                              objectFit="contain"
                            />
                          ) : (
                            <span className="font-medium dark:text-white">{network.name}</span>
                          )}
                        </div>
                      ))}
                    </div>
                  </div>
                )}
              </div>
              
              {/* La tua valutazione */}
              <div className="mt-8 border-t border-gray-200 dark:border-gray-700 pt-4">
                <h4 className="text-lg font-semibold mb-2 dark:text-white">La tua valutazione</h4>
                {session ? (
                  rate > 0 ? (
                    <div className="flex items-center gap-2">
                      <Rating value={rate} mine className="text-yellow-400" />
                      <button 
                        onClick={() => setIsRating(true)}
                        className="text-xs text-indigo-600 dark:text-indigo-400 hover:underline"
                      >
                        Modifica
                      </button>
                    </div>
                  ) : (
                    <button 
                      onClick={() => setIsRating(true)}
                      className="flex items-center gap-1 text-indigo-600 dark:text-indigo-400 hover:underline"
                    >
                      <StarIconOutline className="h-5 w-5" />
                      <span>Aggiungi la tua valutazione</span>
                    </button>
                  )
                ) : (
                  <div className="text-gray-600 dark:text-gray-400">
                    <p className="mb-2">Accedi per valutare questo titolo</p>
                    <button 
                      onClick={() => signIn()}
                      className="px-3 py-1 text-sm bg-indigo-600 text-white rounded-md hover:bg-indigo-700 transition-colors"
                    >
                      Accedi
                    </button>
                  </div>
                )}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
} 