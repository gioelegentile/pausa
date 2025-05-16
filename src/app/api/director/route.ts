import { type NextRequest, NextResponse } from "next/server";

export interface CreditsResponse {
  crew: {
    job: string;
    name: string;
  }[];
}

export async function GET(request: NextRequest) {
  const searchParams = request.nextUrl.searchParams;
  const id = searchParams.get("id");

  if (!id) {
    return NextResponse.json(
      { error: "Il parametro di ricerca è obbligatorio" },
      { status: 400 },
    );
  }

  try {
    const response = await fetch(
      `https://api.themoviedb.org/3/movie/${id}/credits?api_key=${process.env.TMDB_API_KEY}&language=en-US`,
      { method: "GET" },
    );

    if (!response.ok) {
      throw new Error("Impossibile connettersi all'API TMDb");
    }

    // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
    const data: CreditsResponse = await response.json();
    const directorName = data.crew.find((c) => c.job === "Director")?.name;

    return NextResponse.json({ directorName });
  } catch (error) {
    console.error("Errore nel recupero dei film:", error);
    return NextResponse.json(
      { error: "Impossibile recuperare i film" },
      { status: 500 },
    );
  }
}
