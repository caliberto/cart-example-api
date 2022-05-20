DROP TABLE IF EXISTS "product_details";

DROP TABLE IF EXISTS "products";

CREATE TABLE "products" (
    id   BIGINT PRIMARY KEY,
    name TEXT,
    image TEXT,
    sku  TEXT,
    price      REAL,
    sale_price REAL
);

DELETE FROM products;

INSERT INTO products (id, name, image, sku, price, sale_price)
    VALUES (1, 'Ray-Ban Wayfarer', 'Ray-Ban Wayfarer', 'RB3210 2112A', 152.00, 121.60);

INSERT INTO products (id, name, image, sku, price, sale_price)
    VALUES (2, 'Ray-Ban Round', 'Ray-Ban Round', 'RB9210 1149', 166.00, null);

INSERT INTO products (id, name, image, sku, price, sale_price)
    VALUES (3, 'Ray-Ban Clubmaster', 'Ray-Ban Clubmaster', 'RB3594 9093C8 53', 152.00, null);

INSERT INTO products (id, name, image, sku, price, sale_price)
    VALUES (4, 'Ray-Ban RB3594', 'Ray-Ban RB3594', 'RB3594 2345 53', 250.90, null);

INSERT INTO products (id, name, image, sku, price, sale_price)
    VALUES (5, 'Ray-Ban Aviator', 'Ray-Ban Aviator', 'RB6211 5122A 50', 150.90, null);

CREATE TABLE "product_details" (
    id         BIGINT  PRIMARY KEY,
    product_id BIGINT  REFERENCES products (id),
    size       INTEGER,
    quantity   INTEGER
);

DELETE FROM product_details;

INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (1, 1, 50, 1);

INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (2, 1, 52, 2);
    
INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (3, 1, 54, 4);
    
INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (4, 2, 50, 2);
    
INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (5, 2, 52, 5);
    
INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (6, 3, 52, 4);
    
INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (7, 3, 54, 3);
    
INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (8, 4, 50, 2);
    
INSERT INTO product_details (id, product_id, size, quantity)
    VALUES (9, 5, 50, 5);