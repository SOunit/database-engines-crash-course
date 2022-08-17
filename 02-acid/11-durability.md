# durability

- keep data
- durability techniques
  - WAL - write ahead log
  - Asynchronous snapshot
  - AOF

# WAL / write-ahead-log

- write a lot of data to disk is expensive(indexes, data files, columns, rows, etc...)
- that's why DBMSs persist a compressed version of the changes known as WAL

# OS cache

- a write request in OS usually goes to the OS cache
  - less I/O using batch
  - batch execute multiple I/O request in once for performance
- when the writes go to OS cache, an OS crash, machine restart could lead to loss of data
- Fsync OS command forces writes to always go to disk
- fsync can be expensive and slows down commits

# summary

-
