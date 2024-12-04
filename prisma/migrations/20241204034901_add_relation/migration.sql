/*
  Warnings:

  - Added the required column `item_id` to the `ReturnRecord` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `ReturnRecord` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `returnrecord` ADD COLUMN `item_id` INTEGER NOT NULL,
    ADD COLUMN `user_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `ReturnRecord` ADD CONSTRAINT `ReturnRecord_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ReturnRecord` ADD CONSTRAINT `ReturnRecord_item_id_fkey` FOREIGN KEY (`item_id`) REFERENCES `Items`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
