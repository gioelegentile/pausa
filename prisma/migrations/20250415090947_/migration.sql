/*
  Warnings:

  - You are about to drop the `Genre` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_GenreToWork` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE "Work" ADD COLUMN "genres" TEXT;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Genre";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "_GenreToWork";
PRAGMA foreign_keys=on;
