-- create table
CREATE TABLE temp (t int);

-- insert million data
INSERT INTO
    temp (t)
SELECT
    -- postgres function
    random() * 100
FROM
    -- postgres function
    generate_series(0, 1000000);

-- check
SELECT
    *
FROM
    temp
limit
    10;