/*
  Warnings:

  - You are about to drop the column `image` on the `menus` table. All the data in the column will be lost.
  - Added the required column `thumbnail` to the `Menus` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `Menus_category_Id_fkey` ON `menus`;

-- AlterTable
ALTER TABLE `menus` DROP COLUMN `image`,
    ADD COLUMN `thumbnail` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `Menus` ADD CONSTRAINT `Menus_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
