import { db } from "~/server/db";

// TODO re-enable cache after importing csv

export const findUniqueUser = async (userId: string) => {
  return db.user.findUnique({
    where: { id: userId },
  });
};

export const findUserByEmail = async (email: string) => {
  return db.user.findUnique({
    where: { email },
  })
}