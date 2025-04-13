import { type NextRequest, NextResponse } from 'next/server';
import { env } from "~/env";

// Rappresenta un singolo film
interface Genre {
  id: number;
  name: string;
}

interface ProductionCompany {
  id: number;
  logo_path: string;
  name: string;
  origin_country: string;
}

interface ProductionCountry {
  iso_3166_1: string;
  name: string;
}

interface SpokenLanguage {
  english_name: string;
  iso_639_1: string;
  name: string;
}

export interface MoviesDetailResponse {
  adult: boolean; // Defaults to true
  backdrop_path: string;
  belongs_to_collection: string;
  budget: number; // Defaults to 0
  genres: Genre[];
  homepage: string;
  id: number; // Defaults to 0
  imdb_id: string;
  original_language: string;
  original_title: string;
  overview: string;
  popularity: number; // Defaults to 0
  poster_path: string;
  production_companies: ProductionCompany[];
  production_countries: ProductionCountry[];
  release_date: string;
  revenue: number; // Defaults to 0
  runtime: number; // Defaults to 0
  spoken_languages: SpokenLanguage[];
  status: string;
  tagline: string;
  title: string;
  video: boolean; // Defaults to true
  vote_average: number; // Defaults to 0
  vote_count: number; // Defaults to 0
}

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const movieId = searchParams.get('id');

  if (!movieId) {
    return NextResponse.json({ error: 'Il parametro di ricerca è obbligatorio' }, { status: 400 });
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/movie/${movieId}?api_key=${env.TMDB_API_KEY}&language=it-IT`,
      { method: 'GET' }
    );
    
    if (!response.ok) {
      throw new Error('Impossibile connettersi all\'API TMDb');
    }
    
    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: MoviesDetailResponse = await response.json();

    
    return NextResponse.json(data);
  } catch (error) {
    console.error('Errore nel recupero dei dettaglio:', error);
    return NextResponse.json({ error: 'Impossibile recuperare il dettaglio' }, { status: 500 });
  }
}
