# how to decide which index database optimizer use

# table

- table: t
- columns: f1, f2
- indexes: f1_idx, f2_idx

# query

- `select * from t where f1 = 1 and f2 = 4;`

# case1

- use both indexes
- fetch result from indexes
- combine result

- depends on data amount too
  - if it's small, maybe not using index
- depends on the amount of data your fetching
  - if it's large, no use for index scan, you fetch a lot anyway

# case2

- use only 1 index
- this happens if database know f1 is small and operator is `and`
  (`and` operator make results smaller)

# case3

- use no index
- in case query return almost all rows
- in case table is small, table scan is faster than index scan

# excuses

- `join` will change the game
