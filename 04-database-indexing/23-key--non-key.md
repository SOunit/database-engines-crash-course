# key and non-key column indexes

- key index : id, name, etc.
- non-key index: include column to index

```

explain analyze select id, g from students where g > 80 and g < 95 order by g desc;
```

- create index for faster select query

```
create index g_idx on students(g);
```

- create another index to execute index scan
- drop existing index

```
drop index g_idx;
```

- create new index

```
create index g_idx on students(g) include (id);
```

- index with buffers

```
explain (analyze, buffers) select id, g from students where 10 < g and g < 20 order by g desc;
```
