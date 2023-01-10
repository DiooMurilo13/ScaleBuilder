-- CreateTable
CREATE TABLE "Escala" (
    "id" SERIAL NOT NULL,
    "nomeEscala" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "usuId" INTEGER NOT NULL,

    CONSTRAINT "Escala_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Usuario" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Escala_id_key" ON "Escala"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_email_key" ON "Usuario"("email");

-- AddForeignKey
ALTER TABLE "Escala" ADD CONSTRAINT "Escala_usuId_fkey" FOREIGN KEY ("usuId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
