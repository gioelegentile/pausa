"use server";

import { type Movie } from "~/app/api/movies/route";
import { api } from "~/trpc/server";
import { type MediaType } from "~/app/models/types";

export async function setRate(data: Movie, rate: number, mediaType: MediaType) {
  try {
    let work = await api.work.getByExternalId(data.id);
    const rating = await api.workRating.getByExternalId(data.id);

    if (!work) {
      work = await api.work.create({
        externalId: data.id,
        type: mediaType,
      });
    }

    if (rating) {
      await api.workRating.update({
        id: rating.id,
        rating: rate,
      });
    } else {
      await api.workRating.create({
        externalId: data.id,
        workId: work.id,
        rating: rate,
      });
    }
  } catch (error) {
    console.error("Error in handleSetRate:", error);
  }
}

export async function getRate(data: Movie) {
  try {
    const rating = await api.workRating.getByExternalId(data.id);

    if (rating) {
      return rating.rating;
    } else {
      return 0;
    }
  } catch (error) {
    console.error("Error in getRate:", error);
    return 0;
  }
}
