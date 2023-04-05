-- DropIndex
DROP INDEX `Menus_category_Id_fkey` ON `menus`;

-- AddForeignKey
ALTER TABLE `Menus` ADD CONSTRAINT `Menus_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
