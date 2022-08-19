# combine index

- by combining multiple indexes query can be faster

# table

- test table
- a, b, c

# sample queries

- select id from test where a = 1;
- select id from test where b = 1;
- select id from test where a = 1 and b = 1;
- select id from test where a = 1 or b = 1;

# indexes

- a_idx
- b_idx
- a_b_idx

# pattern1 / 2 single column index

- a_idx, b_idx

  - fast on index scan

# pattern2 / combined index

- a_b_idx
  - fast on a scan, ab scan, not on b scan
  - not fast on or query

# pattern3 / multi indexes (single column index and combined index)

- fast on all queries
