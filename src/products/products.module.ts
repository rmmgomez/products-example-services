import { Module } from '@nestjs/common';
import { ProductsService } from './products.service';
import { ProductsController } from './products.controller';
import { CommonsModule } from 'src/commons/commons.module';
import { Product } from 'src/entity/product.entity';
import { MikroOrmModule } from '@mikro-orm/nestjs';

@Module({
  controllers: [ProductsController],
  providers: [ProductsService],
  imports: [CommonsModule, MikroOrmModule.forFeature([Product])],
})
export class ProductsModule {}
