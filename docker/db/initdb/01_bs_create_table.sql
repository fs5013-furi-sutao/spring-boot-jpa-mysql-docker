USE shop;

SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
  id int NOT NULL AUTO_INCREMENT COMMENT '顧客ID',
  name varchar(255) NOT NULL COMMENT '氏名',
  PRIMARY KEY (id)
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='顧客'
;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  id int NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  name varchar(255) NOT NULL COMMENT '商品名',
  price int NOT NULL COMMENT '標準価格',
  PRIMARY KEY (id)
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='商品'
;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  id int NOT NULL AUTO_INCREMENT COMMENT '受注ID',
  customer_id int NOT NULL COMMENT '顧客ID',
  price int NOT NULL COMMENT '受注日',
  PRIMARY KEY (id),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='受注'
;

DROP TABLE IF EXISTS order_items;

CREATE TABLE order_items (
  id int NOT NULL AUTO_INCREMENT COMMENT '受注明細ID',
  order_id int NOT NULL COMMENT '受注ID',
  product_id int NOT NULL COMMENT '商品ID',
  price int NOT NULL COMMENT '数量',
  PRIMARY KEY (id),
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
) ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
comment='受注明細'
;

COMMIT;
