export type MediaType = "movie" | "tvshow" | "anime" | "game";

export type Filters = {
  director?: string;
  minYear: number;
  maxYear: number;
  genre?: string;
};

export const filtersInitialState: Filters = {
  minYear: 1900,
  maxYear: new Date().getFullYear(),
};
