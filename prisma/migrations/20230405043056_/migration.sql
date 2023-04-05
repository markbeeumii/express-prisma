-- DropIndex
DROP INDEX `products_category_Id_fkey` ON `products`;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
