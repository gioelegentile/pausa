import { type Genre } from "~/app/api/genres/route";
import { type MediaType, type WorkModel } from "~/app/_models/works";

export async function getGenresFromTmdb(mediaType: MediaType) {
  const type = mediaType === "tvshow" ? "tv" : mediaType;

  const response = await fetch(`/api/genres?type=${type}`);

  if (!response.ok) {
    throw new Error("Failed to fetch genres");
  }

  return (await response.json()) as Genre[];
}

export async function fetchWorks(mediaType: MediaType, text: string) {
  const type = mediaType === "tvshow" ? "tv" : mediaType;

  let url =
    (type === "tv" ? "/api/tv" : "/api/movies") +
    `?query=${encodeURIComponent(text)}`;

  if (type === "tv") {
    url += `&type=${mediaType}`;
  }
  const res: Response = await fetch(url);

  return (await res.json()) as WorkModel[];
}
