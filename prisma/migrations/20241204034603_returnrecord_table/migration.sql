/*
  Warnings:

  - You are about to drop the column `actual_return_date` on the `borrowrecord` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `borrowrecord` DROP COLUMN `actual_return_date`;

-- CreateTable
CREATE TABLE `ReturnRecord` (
    `return_id` INTEGER NOT NULL AUTO_INCREMENT,
    `borrow_id` INTEGER NOT NULL,
    `actual_return_date` DATETIME(3) NOT NULL,

    UNIQUE INDEX `ReturnRecord_borrow_id_key`(`borrow_id`),
    PRIMARY KEY (`return_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `ReturnRecord` ADD CONSTRAINT `ReturnRecord_borrow_id_fkey` FOREIGN KEY (`borrow_id`) REFERENCES `BorrowRecord`(`borrow_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
