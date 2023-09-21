-- CreateTable
CREATE TABLE "Car" (
    "id" SERIAL NOT NULL,
    "model" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "year" TEXT NOT NULL,

    CONSTRAINT "Car_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Owner" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "carId" INTEGER,

    CONSTRAINT "Owner_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Owner" ADD CONSTRAINT "Owner_carId_fkey" FOREIGN KEY ("carId") REFERENCES "Car"("id") ON DELETE SET NULL ON UPDATE CASCADE;
