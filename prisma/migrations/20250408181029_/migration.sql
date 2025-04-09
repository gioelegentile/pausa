/*
  Warnings:

  - You are about to drop the `Account` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Session` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `VerificationToken` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the column `emailVerified` on the `User` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "Account_provider_providerAccountId_key";

-- DropIndex
DROP INDEX "Session_sessionToken_key";

-- DropIndex
DROP INDEX "VerificationToken_identifier_token_key";

-- DropIndex
DROP INDEX "VerificationToken_token_key";

-- AlterTable
ALTER TABLE "Work" ADD COLUMN "country" TEXT;
ALTER TABLE "Work" ADD COLUMN "description" TEXT;
ALTER TABLE "Work" ADD COLUMN "director" TEXT;
ALTER TABLE "Work" ADD COLUMN "imageUrl" TEXT;
ALTER TABLE "Work" ADD COLUMN "releaseDate" DATETIME;
ALTER TABLE "Work" ADD COLUMN "title" TEXT;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Account";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Session";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "VerificationToken";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Genre" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "externalId" INTEGER NOT NULL,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_GenreToWork" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_GenreToWork_A_fkey" FOREIGN KEY ("A") REFERENCES "Genre" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_GenreToWork_B_fkey" FOREIGN KEY ("B") REFERENCES "Work" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_User" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT,
    "email" TEXT,
    "image" TEXT
);
INSERT INTO "new_User" ("email", "id", "image", "name") SELECT "email", "id", "image", "name" FROM "User";
DROP TABLE "User";
ALTER TABLE "new_User" RENAME TO "User";
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;

-- CreateIndex
CREATE UNIQUE INDEX "_GenreToWork_AB_unique" ON "_GenreToWork"("A", "B");

-- CreateIndex
CREATE INDEX "_GenreToWork_B_index" ON "_GenreToWork"("B");
