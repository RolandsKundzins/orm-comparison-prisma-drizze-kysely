/*
  Warnings:

  - Added the required column `newField` to the `Post` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `post` ADD COLUMN `newField` VARCHAR(255) NOT NULL DEFAULT "shit";
