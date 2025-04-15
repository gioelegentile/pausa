export const mediaTypes = ["movie", "tvshow", "anime", "game"] as const;

export type MediaType = typeof mediaTypes[number];

export type WorkModel = {
  type: MediaType;
  posterPath?: string;
  genreIds: number[];
  id: number;
  overview: string;
  popularity: number;
  date: string;
  title: string;
  voteAverage: number;
  voteCount: number;
};

export interface TmdbResponse<T> {
  page: number;
  results: T[];
  total_pages: number;
  total_results: number;
}

export type TvShow = {
  adult: boolean;
  backdrop_path?: string;
  genre_ids: number[];
  id: number;
  origin_country: string[];
  original_language: string;
  original_name: string;
  overview: string;
  popularity: number;
  poster_path?: string;
  first_air_date: string;
  name: string;
  vote_average: number;
  vote_count: number;
};

export type Movie = {
  adult: boolean;
  backdrop_path?: string;
  genre_ids: number[];
  id: number;
  original_language: string;
  original_title: string;
  overview: string;
  popularity: number;
  poster_path?: string;
  release_date: string;
  title: string;
  video: boolean;
  vote_average: number;
  vote_count: number;
};
