/*
  Warnings:

  - You are about to drop the column `code` on the `products` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `Products_category_Id_fkey` ON `products`;

-- AlterTable
ALTER TABLE `products` DROP COLUMN `code`,
    ADD COLUMN `code_pro` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
