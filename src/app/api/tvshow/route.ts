import { type NextRequest, NextResponse } from "next/server";
import { env } from "~/env";

// Rappresenta un singolo film
export interface TvShow {
  adult: boolean;
  backdrop_path: string | null;
  genre_ids: number[];
  id: number;
  original_language: string;
  original_title: string;
  overview: string;
  popularity: number;
  poster_path: string | null;
  release_date: string;
  title: string;
  video: boolean;
  vote_average: number;
  vote_count: number;
}

// Rappresenta la risposta dell'API contenente i film
export interface TvShowResponse {
  page: number;
  results: TvShow[];
  total_pages: number;
  total_results: number;
}

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const query = searchParams.get("query");
  const type = searchParams.get("type");

  if (!query) {
    return NextResponse.json(
      { error: "Il parametro di ricerca è obbligatorio" },
      { status: 400 },
    );
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/search/tv?api_key=${env.TMDB_API_KEY}&language=it-IT&query=${encodeURIComponent(query)}`,
      { method: "GET" },
    );

    if (!response.ok) {
      throw new Error("Impossibile connettersi all'API TMDb");
    }

    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: TvShowResponse = await response.json();
    // Limita i risultati a 18 come nel codice originale
    data.results = data.results
      .filter((tvshow) =>
        type == "anime"
          ? tvshow.genre_ids.includes(16)
          : !tvshow.genre_ids.includes(16),
      )
      .slice(0, 12)
      .sort((a, b) => b.popularity - a.popularity);

    return NextResponse.json(data);
  } catch (error) {
    console.error("Errore nel recupero dei film:", error);
    return NextResponse.json(
      { error: "Impossibile recuperare i film" },
      { status: 500 },
    );
  }
}
