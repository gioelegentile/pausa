import { type Movie, type TvShow, type WorkModel } from "~/app/_models/works";

export function mapTvShow(show: TvShow): WorkModel {
  return {
    type: "tvshow",
    id: show.id,
    title: show.name,
    overview: show.overview,
    date: show.first_air_date,
    posterPath: show.poster_path,
    voteAverage: show.vote_average,
    genreIds: show.genre_ids,
    popularity: show.popularity,
    voteCount: show.vote_count,
  };
}

export function mapMovie(movie: Movie): WorkModel {
  return {
    type: "movie",
    id: movie.id,
    title: movie.title,
    overview: movie.overview,
    date: movie.release_date,
    posterPath: movie.poster_path,
    voteAverage: movie.vote_average,
    genreIds: movie.genre_ids,
    popularity: movie.popularity,
    voteCount: movie.vote_count,
  };
}
