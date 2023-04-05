/*
  Warnings:

  - Added the required column `image` to the `Products` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `Products_category_Id_fkey` ON `products`;

-- AlterTable
ALTER TABLE `products` ADD COLUMN `image` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
