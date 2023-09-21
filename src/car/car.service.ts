import { Injectable } from "@nestjs/common";
import { CarDto } from "./car.dto";

@Injectable()
export class CarService {
  findOne(id: number): CarDto {
    let carDto = new CarDto(id, "some");
    return carDto;
  }
}
