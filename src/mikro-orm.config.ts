import { ConnectionOptions } from '@mikro-orm/core';
import { Product } from './entity/product.entity';

export default {
  entities: [Product],
  type: 'mariadb', // one of `mongo` | `mysql` | `mariadb` | `postgresql` | `sqlite`
  dbName: process.env.DB_DATABASE || 'products_example',
  user: process.env.DB_USERNAME || 'root',
  password: process.env.DB_PASSWORD || '',
  host: process.env.DB_SERVER_HOST || 'localhost',
  port: parseInt(process.env.DB_SERVER_PORT, 10) || 3306,
  debug: true,
} as ConnectionOptions;
