/*
  Warnings:

  - Added the required column `title_ch` to the `Categories` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `Products_category_Id_fkey` ON `products`;

-- AlterTable
ALTER TABLE `categories` ADD COLUMN `title_ch` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
