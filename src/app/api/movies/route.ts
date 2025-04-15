import { type NextRequest, NextResponse } from "next/server";
import { env } from "~/env";
import { type Movie, type TmdbResponse } from "~/app/_models/works";
import { mapMovie } from "~/app/_mappers/works-mapper";

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const query = searchParams.get("query");

  if (!query) {
    return NextResponse.json(
      { error: "Il parametro di ricerca è obbligatorio" },
      { status: 400 },
    );
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/search/movie?api_key=${env.TMDB_API_KEY}&language=it-IT&query=${encodeURIComponent(query)}`,
      { method: "GET" },
    );

    if (!response.ok) {
      throw new Error("Impossibile connettersi all'API TMDb");
    }

    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: TmdbResponse<Movie> = await response.json();

    return NextResponse.json(
      data.results
        .slice(0, 12)
        .sort((a, b) => b.popularity - a.popularity)
        .map((m) => mapMovie(m)),
    );
  } catch (error) {
    console.error("Errore nel recupero dei film:", error);
    return NextResponse.json(
      { error: "Impossibile recuperare i film" },
      { status: 500 },
    );
  }
}
