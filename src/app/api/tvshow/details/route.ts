import { type NextRequest, NextResponse } from 'next/server';
import { env } from "~/env";

export interface TvShowDetailResponse {
  adult: boolean; // Defaults to true
  backdrop_path: string;
  created_by: CreatedBy[];
  episode_run_time: number[];
  first_air_date: string;
  genres: Genre[];
  homepage: string;
  id: number; // Defaults to 0
  in_production: boolean; // Defaults to true
  languages: string[];
  last_air_date: string;
  last_episode_to_air: Episode;
  name: string;
  next_episode_to_air: string;
  networks: Network[];
  number_of_episodes: number; // Defaults to 0
  number_of_seasons: number; // Defaults to 0
  origin_country: string[];
  original_language: string;
  original_name: string;
  overview: string;
  popularity: number; // Defaults to 0
  poster_path: string;
  production_companies: ProductionCompany[];
  production_countries: ProductionCountry[];
  seasons: Season[];
  spoken_languages: SpokenLanguage[];
  status: string;
  tagline: string;
  type: string;
  vote_average: number; // Defaults to 0
  vote_count: number; // Defaults to 0
}

interface CreatedBy {
  id: number; // Defaults to 0
  credit_id: string;
  name: string;
  gender: number; // Defaults to 0
  profile_path: string;
}

interface Genre {
  id: number; // Defaults to 0
  name: string;
}

interface Episode {
  id: number; // Defaults to 0
  name: string;
  overview: string;
  vote_average: number; // Defaults to 0
  vote_count: number; // Defaults to 0
  air_date: string;
  episode_number: number; // Defaults to 0
  production_code: string;
  runtime: number; // Defaults to 0
  season_number: number; // Defaults to 0
  show_id: number; // Defaults to 0
  still_path: string;
}

interface Network {
  id: number; // Defaults to 0
  logo_path: string;
  name: string;
  origin_country: string;
}

interface ProductionCompany {
  id: number; // Defaults to 0
  logo_path: string;
  name: string;
  origin_country: string;
}

interface ProductionCountry {
  iso_3166_1: string;
  name: string;
}

interface Season {
  air_date: string;
  episode_count: number; // Defaults to 0
  id: number; // Defaults to 0
  name: string;
  overview: string;
  poster_path: string;
  season_number: number; // Defaults to 0
  vote_average: number; // Defaults to 0
}

interface SpokenLanguage {
  english_name: string;
  iso_639_1: string;
  name: string;
}


export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const seriesId = searchParams.get('id');
  
  if (!seriesId) {
    return NextResponse.json({ error: 'Il parametro di ricerca è obbligatorio' }, { status: 400 });
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/tv/${seriesId}?api_key=${env.TMDB_API_KEY}&language=it-IT`,
      { method: 'GET' }
    );
    
    if (!response.ok) {
      throw new Error('Impossibile connettersi all\'API TMDb');
    }
    
    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: TvShowDetailResponse = await response.json();
    
    return NextResponse.json(data);
  } catch (error) {
    console.error('Errore nel recupero dei film:', error);
    return NextResponse.json({ error: 'Impossibile recuperare i film' }, { status: 500 });
  }
}
