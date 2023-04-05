-- DropIndex
DROP INDEX `Products_category_Id_fkey` ON `products`;

-- AlterTable
ALTER TABLE `products` MODIFY `code` VARCHAR(191) NULL,
    MODIFY `image` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `Products` ADD CONSTRAINT `Products_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
