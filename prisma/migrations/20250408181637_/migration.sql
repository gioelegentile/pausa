/*
  Warnings:

  - Added the required column `type` to the `Genre` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Genre" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "type" TEXT NOT NULL,
    "externalId" INTEGER NOT NULL,
    "name" TEXT NOT NULL
);
INSERT INTO "new_Genre" ("externalId", "id", "name") SELECT "externalId", "id", "name" FROM "Genre";
DROP TABLE "Genre";
ALTER TABLE "new_Genre" RENAME TO "Genre";
CREATE UNIQUE INDEX "Genre_externalId_type_key" ON "Genre"("externalId", "type");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
