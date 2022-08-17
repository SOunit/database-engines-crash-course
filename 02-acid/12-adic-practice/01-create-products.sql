DROP TABLE IF EXISTS products;

CREATE TABLE products (
    pid serial PRIMARY KEY,
    name TEXT,
    price FLOAT,
    inventory INTEGER
);