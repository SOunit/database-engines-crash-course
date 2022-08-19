# index

- any backend developer needs to know
- what it is
- how to work

- index is an data structure apply to database
  - e.x. dictionary and index letters

# explain analyze

```
explain analyze select id from employees where id = 2000;
```

# Index Only Scan

- use B-tree
- like book index

# heap fetch

-

# Parallel Seq Scan on employees

- no index, full-scan, worst thing

# create index

```
create index employees_name on employees(name);
```
