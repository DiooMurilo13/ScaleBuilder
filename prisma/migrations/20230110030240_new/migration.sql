/*
  Warnings:

  - You are about to drop the column `usuId` on the `Escala` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Escala" DROP CONSTRAINT "Escala_usuId_fkey";

-- AlterTable
ALTER TABLE "Escala" DROP COLUMN "usuId";

-- CreateTable
CREATE TABLE "_EscalaToUsuario" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_EscalaToUsuario_AB_unique" ON "_EscalaToUsuario"("A", "B");

-- CreateIndex
CREATE INDEX "_EscalaToUsuario_B_index" ON "_EscalaToUsuario"("B");

-- AddForeignKey
ALTER TABLE "_EscalaToUsuario" ADD CONSTRAINT "_EscalaToUsuario_A_fkey" FOREIGN KEY ("A") REFERENCES "Escala"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_EscalaToUsuario" ADD CONSTRAINT "_EscalaToUsuario_B_fkey" FOREIGN KEY ("B") REFERENCES "Usuario"("id") ON DELETE CASCADE ON UPDATE CASCADE;
