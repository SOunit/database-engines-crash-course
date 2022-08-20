# question

- how to handle concurrency in DB?
- what is the basic knowledge of DB?
- what is partition?
- what is sharding?

# motivation

- I never study DB in-depth, so let's learn
- understanding of DB system is good for backend developer

# point

- database is data-structure and algorithm
- index is B-Tree. creating another data-structure for fast access
- `explain analyze select * from table where id = 1`
- disk IO make queries slow
- full-scan / table scan is slowest
- index scan is fast
- index only scan is the fastest
- heap scan is not bad
- heap is rows of data / pages of data
- bitmap to batch access to disk IO

# lecture feature

- he repeats important concept many times
- he bring new concept before explain, but just try to keep up
