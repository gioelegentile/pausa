/* eslint-disable @typescript-eslint/no-unsafe-assignment */

import { type NextRequest, NextResponse } from "next/server";
import { env } from "~/env";
import { type Game, type Movie, type TvShow, type MediaType, type WorkModel } from "~/app/_models/works";
import { mapAnime, mapGame, mapMovie, mapTvShow } from "~/app/_mappers/works-mapper";

function endpoint(mediaType: MediaType, id: number) {
    switch (mediaType) {
        case "movie":
            return `https://api.themoviedb.org/3/movie/${id}`;
        case "tvshow":
        case "anime":
            return `https://api.themoviedb.org/3/tv/${id}`;
        case "game":
            return `https://api.rawg.io/api/games/${id}`;
    }
}

function queryString(mediaType: MediaType) {
    switch (mediaType) {
        case "tvshow":
        case "anime":
        case "movie":
            return new URLSearchParams({
                api_key: env.TMDB_API_KEY,
                language: "it-IT",
            });
        case "game":
            return new URLSearchParams({
                key: env.RAWG_API_KEY,
            });
    }
}

async function extractWork(mediaType: MediaType, response: Response): Promise<WorkModel> {
    switch (mediaType) {
        case "movie": 
            return mapMovie((await response.json()) as Movie);
        case "tvshow": 
            return mapTvShow((await response.json()) as TvShow);
        case "anime": 
            return mapAnime((await response.json()) as TvShow);
        case "game":
            return mapGame((await response.json()) as Game);
    }
}

export async function GET(
    request: NextRequest,
    { params }: { params: Promise<{ mediaType: MediaType }> }
) {
    const searchParams = request.nextUrl.searchParams;
    const { mediaType } = await params;
    const id = searchParams.get("id");

    if (!id) {
        return NextResponse.json(
            { error: "Il parametro id è obbligatorio" },
            { status: 400 },
        );
    }

    try {

        const response = await fetch(`${endpoint(mediaType, parseInt(id))}?${queryString(mediaType)}`);

        if (!response.ok) {
            throw new Error("Impossibile connettersi all'API TMDb");
        }

        return NextResponse.json(await extractWork(mediaType, response));

    } catch (error) {
        console.error("Errore nel recupero dei film:", error);
        return NextResponse.json(
            { error: "Impossibile recuperare i film" },
            { status: 500 },
        );
    }
}
