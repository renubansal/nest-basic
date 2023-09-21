import { Controller, Get, Param, ParseIntPipe } from "@nestjs/common";
import { CarService } from "./car.service";
import { CarDto } from "./car.dto";

@Controller('car')
export class CarController {
  constructor(private readonly carService: CarService) {}

  @Get(':id')
  async findOne(@Param('id', ParseIntPipe) id: number): Promise<CarDto> {
    return this.carService.findOne(id);
  }
}
