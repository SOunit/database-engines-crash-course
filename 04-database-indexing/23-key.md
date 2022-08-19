# key and non-key column indexes

- key index : id, name, etc.
- non-key index: include column to index

```
explain analyze select id, g from students where g > 80 and g < 95 order by g desc;
```
