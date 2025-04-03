import { type NextRequest, NextResponse } from 'next/server';
import { env } from "~/env";

// Rappresenta un singolo film
export interface Movie {
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
export interface MoviesResponse {
  page: number;
  results: Movie[];
  total_pages: number;
  total_results: number;
}

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const query = searchParams.get('query');
  
  if (!query) {
    return NextResponse.json({ error: 'Query parameter is required' }, { status: 400 });
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/search/movie?api_key=${env.TMDB_API_KEY}&language=it-IT&query=${encodeURIComponent(query)}`,
      { method: 'GET' }
    );
    
    if (!response.ok) {
      throw new Error('Failed to fetch from TMDb API');
    }
    
    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: MoviesResponse = await response.json();
    // Limita i risultati a 18 come nel codice originale
    data.results = data.results.slice(0, 18);
    
    return NextResponse.json(data);
  } catch (error) {
    console.error('Error fetching movies:', error);
    return NextResponse.json({ error: 'Failed to fetch movies' }, { status: 500 });
  }
}
