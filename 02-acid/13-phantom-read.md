# Phantom read / happens if inserted

- tx1 read
- tx2 insert, commit
- tx1 read, un-consistent data

```
begin transaction isolation level serializable;
```

- to prevent phantom-read, use isolation level of serialization
