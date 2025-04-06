/*
  Warnings:

  - A unique constraint covering the columns `[workId,userId]` on the table `WorkRating` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "WorkRating_workId_userId_key" ON "WorkRating"("workId", "userId");
