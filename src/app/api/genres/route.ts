import { type NextRequest, NextResponse } from "next/server";
import { type MediaType } from "~/app/_models/works";
import { env } from "~/env";

export interface Genre {
  id: number;
  name: string;
}

export interface GenresResponse {
  genres: Genre[];
}

export interface GamesGenresResponse {
  results: Genre[];
}

async function fetchGenres(mediaType: MediaType) {
  if (mediaType === "game") {

    const response = await fetch(
      `https://api.rawg.io/api/genres?key=${env.RAWG_API_KEY}`,
      { method: "GET" },
    );

    if (!response.ok) {
      throw new Error("Impossibile connettersi all'API TMDb");
    }

    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: GamesGenresResponse = await response.json();
    return data.results;

  } else {
    
    const response = await fetch(
      `https://api.themoviedb.org/3/genre/${mediaType}/list?api_key=${env.TMDB_API_KEY}&language=it-IT`,
      { method: "GET" },
    );

    if (!response.ok) {
      throw new Error("Impossibile connettersi all'API TMDb");
    }

    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: GenresResponse = await response.json();
    return data.genres;

  }
}

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const type = searchParams.get("type");

  if (!type) {
    return NextResponse.json(
      { error: "Il parametro di ricerca è obbligatorio" },
      { status: 400 },
    );
  }

  try {

    return NextResponse.json(await fetchGenres(type as MediaType));

  } catch (error) {
    console.error("Errore nel recupero dei generi:", error);
    return NextResponse.json(
      { error: "Impossibile recuperare i generi" },
      { status: 500 },
    );
  }
}
