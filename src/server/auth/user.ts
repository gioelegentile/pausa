import { cache } from "react";
import { db } from "~/server/db";

export const findUniqueUser = cache(async (userId: string) => {
  return db.user.findUnique({
    where: { id: userId },
  });
});
