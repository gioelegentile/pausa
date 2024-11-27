"use client";

import { useCallback, useState } from "react";
import theMovieDb, { MoviesResponse } from "~/server/tmdb/tmdbapi";

import { Work } from "./work";

export function Search() {
    // const [ratedWorks] = api.work.getAllRated.useSuspenseQuery([
    //   {
    //     orderBy: 'createdAt',
    //     orderDirection: 'desc'
    //   }
    // ]);

    // const utils = api.useUtils();
    const searchInitialState = {
        page: 0,
        results: [],
        total_pages: 0,
        total_results: 0
    };

    const [searchText, setSearchText] = useState("");
    const [searching, setIsSearching] = useState(false);
    const [searchResult, setSearchResult] = useState<MoviesResponse>(searchInitialState);

    // const createPost = api.work.create.useMutation({
    //   onSuccess: async () => {
    //     await utils.work.invalidate();
    //     setName("");
    //   },
    // });

    const handleClick = useCallback(() => {
        setIsSearching(true);
        theMovieDb.search.getMovie({
            query: searchText
        },
            (res: string) => {
                const parsed: MoviesResponse = JSON.parse(res);
                parsed.results = parsed.results.slice(0, 18);
                console.log(parsed);
                setSearchResult(parsed);
                setIsSearching(false);
            },
            (err: any) => {
                console.log(err);
                setSearchResult(searchInitialState);
                setIsSearching(false);
            }
        );
    }, [searchText, setIsSearching, setSearchResult]);

    return (
        <div className="w-full p-10">
            <form
                onSubmit={(e) => {
                    e.preventDefault();
                    // createPost.mutate({ name });
                }}
                className="flex flex-col gap-2"
            >
                <input
                    type="text"
                    placeholder="Title"
                    value={searchText}
                    onChange={(e) => setSearchText(e.target.value)}
                    className="w-full rounded-full px-4 py-2 text-black"
                />
                <button
                    type="submit"
                    className="rounded-full bg-white/10 px-10 py-3 font-semibold transition hover:bg-white/20"
                    disabled={searching}
                    onClick={handleClick}
                >
                    {searching ? "Searching..." : "Search"}
                </button>
            </form>
            <div className="grid grid-cols-6 gap-6 place-content-center">
                {searchResult.results.length > 0 && searchResult.results.map((result: any) => (
                    <div className="basis-1/6 transition ease-in-out hover:scale-105" key={result.id}>
                        <Work data={result} />
                    </div>
                ))}
            </div>
        </div>
    );
}
