/*
  Warnings:

  - You are about to drop the column `tmdbId` on the `Work` table. All the data in the column will be lost.
  - You are about to drop the column `tmdbId` on the `WorkRating` table. All the data in the column will be lost.
  - Added the required column `externalId` to the `Work` table without a default value. This is not possible if the table is not empty.
  - Added the required column `type` to the `Work` table without a default value. This is not possible if the table is not empty.
  - Added the required column `externalId` to the `WorkRating` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Work" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "externalId" INTEGER NOT NULL,
    "type" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL
);
INSERT INTO "new_Work" ("createdAt", "id") SELECT "createdAt", "id" FROM "Work";
DROP TABLE "Work";
ALTER TABLE "new_Work" RENAME TO "Work";
CREATE UNIQUE INDEX "Work_externalId_type_key" ON "Work"("externalId", "type");
CREATE TABLE "new_WorkRating" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "workId" INTEGER NOT NULL,
    "externalId" INTEGER NOT NULL,
    "userId" TEXT NOT NULL,
    "rating" REAL NOT NULL,
    "createdAt" DATETIME NOT NULL,
    "updatedAt" DATETIME NOT NULL,
    CONSTRAINT "WorkRating_workId_fkey" FOREIGN KEY ("workId") REFERENCES "Work" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "WorkRating_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_WorkRating" ("createdAt", "id", "rating", "updatedAt", "userId", "workId") SELECT "createdAt", "id", "rating", "updatedAt", "userId", "workId" FROM "WorkRating";
DROP TABLE "WorkRating";
ALTER TABLE "new_WorkRating" RENAME TO "WorkRating";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
