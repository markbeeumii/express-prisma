-- DropIndex
DROP INDEX `Menus_category_Id_fkey` ON `menus`;

-- AlterTable
ALTER TABLE `users` MODIFY `username` VARCHAR(191) NULL,
    MODIFY `gender` VARCHAR(191) NULL,
    MODIFY `phone_number` VARCHAR(191) NULL,
    MODIFY `profile_picture` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `Menus` ADD CONSTRAINT `Menus_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
