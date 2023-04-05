/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `Users` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `Menus_category_Id_fkey` ON `menus`;

-- CreateIndex
CREATE UNIQUE INDEX `Users_email_key` ON `Users`(`email`);

-- AddForeignKey
ALTER TABLE `Menus` ADD CONSTRAINT `Menus_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
