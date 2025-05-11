import { type NextRequest, NextResponse } from "next/server";
import { type MovieCredits } from "~/app/_models/works";
import { env } from "~/env";


export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ mediaType: "movie" | "tvshow" | "tv" | "anime" | "game" }> }
) {

  const searchParams = request.nextUrl.searchParams;
  let { mediaType } = await params
  const id = searchParams.get('id');
  mediaType = mediaType === 'tvshow' ? 'tv' : mediaType

  if (!id) {
    return NextResponse.json({ error: 'Il parametro di ricerca è obbligatorio' }, { status: 400 });
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/${mediaType}/${id}/credits?api_key=${env.TMDB_API_KEY}&language=it-IT`,
      { method: 'GET' }
    );
    
    if (!response.ok) {
      throw new Error('Impossibile connettersi all\'API TMDb');
    }
    
    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: MovieCredits = await response.json();

    
    return NextResponse.json(data);
  } catch (error) {
    console.error('Errore nel recupero dei dettaglio:', error);
    return NextResponse.json({ error: 'Impossibile recuperare il dettaglio' }, { status: 500 });
  }
}