CREATE TABLE "products" (
    id   BIGINT PRIMARY KEY,
    name TEXT,
    sku  TEXT
);

DELETE FROM products;

INSERT INTO products (id, name, sku)
    VALUES (1,'Ray-Ban Wayfarer', 'RB3210 2112A');

INSERT INTO products (id, name, sku)
    VALUES (2,'Ray-Ban Round', 'RB9210 1149');

INSERT INTO products (id, name, sku)
    VALUES (3,'Ray-Ban Clubmaster', 'RB3594 9093C8 53');

INSERT INTO products (id, name, sku)
    VALUES (4,'Ray-Ban RB3594', 'RB3594 2345 53');

INSERT INTO products (id, name, sku)
    VALUES (5,'Ray-Ban Aviator', 'RB6211 5122A 50');
