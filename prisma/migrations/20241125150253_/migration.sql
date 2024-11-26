/*
  Warnings:

  - Added the required column `createdAt` to the `Work` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdAt` to the `WorkRating` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `WorkRating` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Work" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "tmdbId" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL
);
INSERT INTO "new_Work" ("id", "tmdbId") SELECT "id", "tmdbId" FROM "Work";
DROP TABLE "Work";
ALTER TABLE "new_Work" RENAME TO "Work";
CREATE UNIQUE INDEX "Work_tmdbId_key" ON "Work"("tmdbId");
CREATE TABLE "new_WorkRating" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "workId" INTEGER NOT NULL,
    "tmdbId" INTEGER NOT NULL,
    "userId" TEXT NOT NULL,
    "rating" REAL NOT NULL,
    "createdAt" DATETIME NOT NULL,
    "updatedAt" DATETIME NOT NULL,
    CONSTRAINT "WorkRating_workId_fkey" FOREIGN KEY ("workId") REFERENCES "Work" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "WorkRating_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_WorkRating" ("id", "rating", "tmdbId", "userId", "workId") SELECT "id", "rating", "tmdbId", "userId", "workId" FROM "WorkRating";
DROP TABLE "WorkRating";
ALTER TABLE "new_WorkRating" RENAME TO "WorkRating";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
