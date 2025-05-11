import { MoviesDetail, TvShowDetail, WorkModelDetail, type Game, type Movie, type TvShow, type WorkModel } from "~/app/_models/works";

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

export function mapAnime(show: TvShow): WorkModel {
  return {
    type: "anime",
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

export function mapGame(game: Game): WorkModel {
  return {
    type: "game",
    id: game.id,
    title: game.name,
    overview: "",
    date: game.released,
    posterPath: game.background_image,
    voteAverage: game.rating * 2,
    genreIds: game.genres.map((genre) => genre.id),
    popularity: game.added,
    voteCount: game.ratings_count,
  };
}

export function mapDetailMovie(movie: MoviesDetail): WorkModelDetail {
  return {
    type: "movie",
    id: movie.id,
    title: movie.title,
    overview: movie.overview,
    date: movie.release_date,
    backdropPath: movie.backdrop_path,
    posterPath: movie.poster_path,
    voteAverage: movie.vote_average,
    genres: movie.genres,
    duration: movie.runtime,
    status: movie.status,
    budget: movie.budget,
    language: movie.spoken_languages,
    popularity: movie.popularity,
    voteCount: movie.vote_count,
  };
}

export function mapDetailTvShow(show: TvShowDetail): WorkModelDetail {
  return {
    type: "tvshow",
    id: show.id,
    title: show.name,
    overview: show.overview,
    date: show.first_air_date,
    backdropPath: show.backdrop_path,
    posterPath: show.poster_path,
    voteAverage: show.vote_average,
    genres: show.genres,
    numberEpisodes: show.number_of_episodes,
    numberSeasons: show.number_of_seasons,
    status: show.status,
    language: show.spoken_languages,
    popularity: show.popularity,
    voteCount: show.vote_count,
  };
}

export function mapDetailAnime(show: TvShowDetail): WorkModelDetail {
  return {
    type: "tvshow",
    id: show.id,
    title: show.name,
    overview: show.overview,
    date: show.first_air_date,
    backdropPath: show.backdrop_path,
    posterPath: show.poster_path,
    voteAverage: show.vote_average,
    genres: show.genres,
    numberEpisodes: show.number_of_episodes,
    numberSeasons: show.number_of_seasons,
    status: show.status,
    language: show.spoken_languages,
    popularity: show.popularity,
    voteCount: show.vote_count,
  };
}