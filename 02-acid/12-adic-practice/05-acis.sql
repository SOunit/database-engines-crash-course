-- make sales
BEGIN TRANSACTION;

UPDATE
    products
SET
    inventory = inventory - 10;

-- crash here
INSERT INTO
    sales (pid, price, quantity)
VALUES
    (1, 999.99, 10);