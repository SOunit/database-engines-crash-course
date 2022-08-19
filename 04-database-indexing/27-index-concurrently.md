# create index concurrently

- to avoid blocking insert to / update database

```
create index concurrently g on grades(g);
```

# risks

- consume more memory
- can possibly fail
