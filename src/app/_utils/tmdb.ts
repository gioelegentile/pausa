import { type Genre } from "~/app/api/genres/route";
import { type MediaType, type WorkModel } from "~/app/_models/works";

export async function fetchGenres(mediaType: MediaType) {
  const type = mediaType === "tvshow" ? "tv" : mediaType;

  const response = await fetch(`/api/genres?type=${type}`);

  if (!response.ok) {
    throw new Error("Failed to fetch genres");
  }

  return (await response.json()) as Genre[];
}

export async function fetchWorks(mediaType: MediaType, text: string) {
  const res: Response = await fetch(`/api/search/${mediaType}?query=${encodeURIComponent(text)}`);

  return (await res.json()) as WorkModel[];
}
