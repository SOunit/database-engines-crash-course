# index scan vs. index only scan

- what is the difference?

# index scan

- search by index, and search table to fetch data (e.x. name column)

# index only scan

- happens use index and fetch index only
- use `non-key-column` to fetch additional data

# create non-key-column index to use index-only-scan

```
create index id_idx on grades(id) include (name);
```
