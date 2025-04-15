import type { MediaType } from "~/app/models/types";
import { type Genre } from "~/app/api/genres/route";

export async function getGenresFromTmdb(mediaType: MediaType) {
  const response = await fetch(`/api/genres?type=${mediaType}`);
  if (!response.ok) {
    throw new Error("Failed to fetch genres");
  }
  return (await response.json()) as Genre[];
}
