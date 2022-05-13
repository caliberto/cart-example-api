CREATE TABLE "product_details" (
    id         BIGINT  PRIMARY KEY,
    product_id BIGINT  REFERENCES products (id),
    size       INTEGER,
    quantity   INTEGER,
    price      REAL,
    sale_price REAL
);

DELETE FROM product_details;

INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (1, 1, 50, 1, 152.00, 151.60);

INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (2, 1, 52, 2, 152.00, 151.60);
    
INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (3, 1, 54, 4, 152.00, 151.60);
    
INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (4, 2, 50, 2, 166.00, null);
    
INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (5, 2, 52, 5, 166.00, null);
    
INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (6, 3, 52, 4, 152.00, null);
    
INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (7, 3, 54, 3, 152.00, null);
    
INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (8, 4, 50, 2, 250.90, null);
    
INSERT INTO product_details (id, product_id, size, quantity, price, sale_price)
    VALUES (9, 5, 50, 5, 150.90, null);