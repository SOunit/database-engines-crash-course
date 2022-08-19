# explain analyze

## ref

- 20-index.md

- can you guess what type of execution each queries?

```
explain analyze select name from employees where name like '%Aa%';
explain analyze select name from employees where name = 'Aa';
explain analyze select * from employees where id = 5000;
explain analyze select id from employees where id = 5000;
explain analyze select id, name from employees where id = 5000;
```

## Parallel Seq Scan on employees

- bad, table-scan

## Bitmap Heap Scan on employees

- not bad, indexed search

## Index Only Scan using employees_name on employees

- the best, only using indexed data

# composed index

- create index on (a, b)
- where a = 1; -> fast
- where a = 1 and b = 1; -> super fast
- where b = 1; -> table scan!!!!
  - left side has to be included to run composed index
