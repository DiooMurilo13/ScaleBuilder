/*
  Warnings:

  - Added the required column `dataInicio` to the `Escala` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Escala" ADD COLUMN     "dataInicio" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "EscalaHistorico" (
    "id" SERIAL NOT NULL,
    "descricao" TEXT NOT NULL,
    "escalaId" INTEGER NOT NULL,

    CONSTRAINT "EscalaHistorico_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DiaSemana" (
    "id" SERIAL NOT NULL,
    "descricao" TEXT NOT NULL,

    CONSTRAINT "DiaSemana_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_DiaSemanaToEscala" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "EscalaHistorico_id_key" ON "EscalaHistorico"("id");

-- CreateIndex
CREATE UNIQUE INDEX "_DiaSemanaToEscala_AB_unique" ON "_DiaSemanaToEscala"("A", "B");

-- CreateIndex
CREATE INDEX "_DiaSemanaToEscala_B_index" ON "_DiaSemanaToEscala"("B");

-- AddForeignKey
ALTER TABLE "EscalaHistorico" ADD CONSTRAINT "EscalaHistorico_escalaId_fkey" FOREIGN KEY ("escalaId") REFERENCES "Escala"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DiaSemanaToEscala" ADD CONSTRAINT "_DiaSemanaToEscala_A_fkey" FOREIGN KEY ("A") REFERENCES "DiaSemana"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_DiaSemanaToEscala" ADD CONSTRAINT "_DiaSemanaToEscala_B_fkey" FOREIGN KEY ("B") REFERENCES "Escala"("id") ON DELETE CASCADE ON UPDATE CASCADE;
