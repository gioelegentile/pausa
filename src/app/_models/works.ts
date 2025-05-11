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

export type WorkModelDetail = {
  type: MediaType;
  backdropPath?: string,
  posterPath?: string;
  genres: Genre[];
  id: number;
  overview: string;
  popularity: number;
  duration?: number;
  status?: string;
  budget?: number;
  releaseDate?: string;
  language?: SpokenLanguage[];
  numberEpisodes?: number;
  numberSeasons?: number;
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

export type TvShowDetail = {
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
  title: string;
  type: string;
  vote_average: number; // Defaults to 0
  vote_count: number; // Defaults to 0
}

export type MoviesDetail = {
  adult: boolean; // Defaults to true
  backdrop_path: string;
  belongs_to_collection: string;
  budget: number; // Defaults to 0
  genres: Genre[];
  homepage: string;
  id: number; // Defaults to 0
  imdb_id: string;
  name: string;
  original_language: string;
  original_title: string;
  overview: string;
  popularity: number; // Defaults to 0
  poster_path: string;
  production_companies: ProductionCompany[];
  production_countries: ProductionCountry[];
  release_date: string;
  revenue: number; // Defaults to 0
  runtime: number; // Defaults to 0
  spoken_languages: SpokenLanguage[];
  status: string;
  tagline: string;
  title: string;
  video: boolean; // Defaults to true
  vote_average: number; // Defaults to 0
  vote_count: number; // Defaults to 0
}

type CreatedBy = {
  id: number; // Defaults to 0
  credit_id: string;
  name: string;
  gender: number; // Defaults to 0
  profile_path: string;
}

type Genre = {
  id: number; // Defaults to 0
  name: string;
}

type Episode = {
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

type Network = {
  id: number; // Defaults to 0
  logo_path: string;
  name: string;
  origin_country: string;
}

type ProductionCompany = {
  id: number; // Defaults to 0
  logo_path: string;
  name: string;
  origin_country: string;
}

type ProductionCountry = {
  iso_3166_1: string;
  name: string;
}

type Season = {
  air_date: string;
  episode_count: number; // Defaults to 0
  id: number; // Defaults to 0
  name: string;
  overview: string;
  poster_path: string;
  season_number: number; // Defaults to 0
  vote_average: number; // Defaults to 0
}

type SpokenLanguage = {
  english_name: string;
  iso_639_1: string;
  name: string;
}

export type CastMember = {
  adult: boolean;
  gender: number;
  id: number;
  known_for_department: string;
  name: string;
  original_name: string;
  popularity: number;
  profile_path: string | null;
  cast_id: number;
  character: string;
  credit_id: string;
  order: number;
}

interface CrewMember {
  adult: boolean;
  gender: number;
  id: number;
  known_for_department: string;
  name: string;
  original_name: string;
  popularity: number;
  profile_path: string | null;
  credit_id: string;
  department: string;
  job: string;
}

export type MovieCredits = {
  id: number;
  cast: CastMember[];
  crew: CrewMember[];
}