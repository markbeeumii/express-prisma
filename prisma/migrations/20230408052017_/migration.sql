-- DropIndex
DROP INDEX `Menus_category_Id_fkey` ON `menus`;

-- AlterTable
ALTER TABLE `categories` MODIFY `title_en` VARCHAR(191) NULL,
    MODIFY `title_kh` VARCHAR(191) NULL,
    MODIFY `description` VARCHAR(255) NULL,
    MODIFY `thumbnail` VARCHAR(255) NOT NULL,
    MODIFY `title_ch` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `menus` MODIFY `title_en` VARCHAR(191) NULL,
    MODIFY `title_kh` VARCHAR(191) NULL,
    MODIFY `title_ch` VARCHAR(191) NULL,
    MODIFY `description` VARCHAR(255) NULL,
    MODIFY `thumbnail` VARCHAR(255) NOT NULL;

-- AlterTable
ALTER TABLE `users` MODIFY `profile_picture` VARCHAR(255) NULL;

-- AddForeignKey
ALTER TABLE `Menus` ADD CONSTRAINT `Menus_category_Id_fkey` FOREIGN KEY (`category_Id`) REFERENCES `Categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
