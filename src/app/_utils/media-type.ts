import { type MediaType } from "~/app/_models/works";

export async function getMediaTitle(type: MediaType): Promise<string> {
  switch (type) {
    case "movie":
      return "Film";
    case "tvshow":
      return "Serie TV";
    case "anime":
      return "Anime";
    case "game":
      return "Videogiochi";
  }
}
