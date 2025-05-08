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

export type TmdbResponse<T> = {
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

export type GameApiResponse = {
  results: Game[];
}

export type Game = {
  id: number;
  slug: string;
  name: string;
  released: string;
  tba: boolean;
  background_image: string;
  rating: number;
  rating_top: number;
  ratings: Record<string, unknown>;
  ratings_count: number;
  reviews_text_count: string;
  added: number;
  added_by_status: Record<string, unknown>;
  metacritic: number;
  playtime: number;
  suggestions_count: number;
  updated: string;
  esrb_rating: ESRBRating;
  platforms: Platform[];
  genres: GameGenre[];
}

export type GameGenre = {
  id: number;
  name: string;
  slug: string;
}

export type ESRBRating = {
  id: number;
  slug: string;
  name: string;
}

export type Platform = {
  platform: PlatformInfo;
  released_at: string;
  requirements: PlatformRequirements;
}

export type PlatformInfo = {
  id: number;
  slug: string;
  name: string;
}

export type PlatformRequirements = {
  minimum: string;
  recommended: string;
}