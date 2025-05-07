/* eslint-disable @typescript-eslint/no-unsafe-assignment */

import { type NextRequest, NextResponse } from "next/server";
import { env } from "~/env";
import { type GameApiResponse, type MediaType, type Movie, type WorkModel, type TmdbResponse, type TvShow } from "~/app/_models/works";
import { mapAnime, mapGame, mapMovie, mapTvShow } from "~/app/_mappers/works-mapper";

function endpoint(mediaType: MediaType) {
    switch (mediaType) {
        case "movie":
            return "https://api.themoviedb.org/3/search/movie";
        case "tvshow":
        case "anime":
            return "https://api.themoviedb.org/3/search/tv";
        case "game":
            return "https://api.rawg.io/api/games";
    }
}

function queryString(mediaType: MediaType, query: string) {
    switch (mediaType) {
        case "tvshow":
        case "anime":
        case "movie":
            return new URLSearchParams({
                query: encodeURIComponent(query),
                api_key: env.TMDB_API_KEY,
                language: "it-IT",
            });
        case "game":
            return new URLSearchParams({
                search: encodeURIComponent(query),
                page_size: "12",
                key: env.RAWG_API_KEY,
            });
    }
}

async function extractWorks(mediaType: MediaType, response: Response): Promise<WorkModel[]> {
    switch (mediaType) {
        case "movie": {
            const data: TmdbResponse<Movie> = await response.json();

            return data.results
                .slice(0, 12)
                .map((m) => mapMovie(m))
                .sort((a, b) => b.popularity - a.popularity);
        }
        case "tvshow": {
            const data: TmdbResponse<TvShow> = await response.json();

            return data.results
                .slice(0, 12)
                .map((show) => mapTvShow(show))
                .filter((show) => !show.genreIds.includes(16))
                .sort((a, b) => b.popularity - a.popularity);
        }
        case "anime": {
            const data: TmdbResponse<TvShow> = await response.json();

            return data.results
                .slice(0, 12)
                .map((show) => mapAnime(show))
                .filter((show) => show.genreIds.includes(16))
                .sort((a, b) => b.popularity - a.popularity);
        }
        case "game": {
            const data: GameApiResponse = await response.json();

            return data.results
                .map((m) => mapGame(m))
                .sort((a, b) => b.popularity - a.popularity);
        }
    }
}

export async function GET(
    request: NextRequest,
    { params }: { params: Promise<{ mediaType: MediaType }> }
) {
    const searchParams = request.nextUrl.searchParams;
    const { mediaType } = await params;
    const query = searchParams.get("query");

    if (!query) {
        return NextResponse.json(
            { error: "Il parametro di ricerca è obbligatorio" },
            { status: 400 },
        );
    }

    try {

        const response = await fetch(`${endpoint(mediaType)}?${queryString(mediaType, query)}`);

        if (!response.ok) {
            throw new Error("Impossibile connettersi all'API TMDb");
        }

        return NextResponse.json(await extractWorks(mediaType, response));

    } catch (error) {
        console.error("Errore nel recupero dei film:", error);
        return NextResponse.json(
            { error: "Impossibile recuperare i film" },
            { status: 500 },
        );
    }
}
