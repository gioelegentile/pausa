import { type NextRequest, NextResponse } from "next/server";

export interface Genre {
    id: number;
    name: string;
}

export interface GenresResponse {
    genres: Genre[];
}

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const type = searchParams.get('type');
  
  if (!type) {
    return NextResponse.json({ error: 'Il parametro di ricerca è obbligatorio' }, { status: 400 });
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/genre/${type}/list?api_key=${process.env.TMDB_API_KEY}&language=it-IT`,
      { method: 'GET' }
    );
    
    if (!response.ok) {
      throw new Error('Impossibile connettersi all\'API TMDb');
    }
    
    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: GenresResponse = await response.json();
    
    return NextResponse.json(data.genres);
  } catch (error) {
    console.error('Errore nel recupero dei generi:', error);
    return NextResponse.json({ error: 'Impossibile recuperare i generi' }, { status: 500 });
  }
}
