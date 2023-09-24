import { Entity, PrimaryKey, Property } from '@mikro-orm/core';
import { CreateProductDto } from 'src/products/dto/create-product.dto';

@Entity()
export class Product {
  @PrimaryKey({ unsigned: true, autoincrement: true, columnType: 'int' })
  id: number;

  @Property({ length: 200 })
  description: string;

  @Property({ length: 200, fieldName: 'imageUrl' })
  imageUrl: string;

  @Property({ columnType: 'smallint', default: 0 })
  rating?: number;

  @Property({ columnType: 'decimal', precision: 8, scale: 2 })
  price: number;

  @Property({ columnType: 'datetime', defaultRaw: 'CURRENT_TIMESTAMP' })
  available: Date;

  static fromDto(createProdDto: CreateProductDto): Product {
    const post = new Product();
    return Object.assign(post, createProdDto);
  }
}
