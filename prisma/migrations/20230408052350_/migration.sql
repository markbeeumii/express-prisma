-- DropIndex
DROP INDEX `Menus_category_Id_fkey` ON `menus`;

-- AlterTable
ALTER TABLE `menus` ADD COLUMN `top` BOOLEAN NOT NULL DEFAULT false;

-- AddForeignKey
ALTER TABLE `Menus` ADD CONSTRAINT `Menus_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
