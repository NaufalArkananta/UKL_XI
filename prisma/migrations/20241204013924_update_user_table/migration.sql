/*
  Warnings:

  - You are about to alter the column `location` on the `items` table. The data in that column could be lost. The data in that column will be cast from `Double` to `VarChar(191)`.

*/
-- AlterTable
ALTER TABLE `borrowrecord` MODIFY `actual_return_date` DATETIME(3) NULL;

-- AlterTable
ALTER TABLE `items` MODIFY `location` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `BorrowRecord` ADD CONSTRAINT `BorrowRecord_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BorrowRecord` ADD CONSTRAINT `BorrowRecord_item_id_fkey` FOREIGN KEY (`item_id`) REFERENCES `Items`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
