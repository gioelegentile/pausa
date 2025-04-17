export type Filters = {
  director?: string;
  minYear: string;
  maxYear: string;
  genre?: string;
};

export const filtersInitialState: Filters = {
  minYear: "1900",
  maxYear: new Date().getFullYear().toString(),
};
