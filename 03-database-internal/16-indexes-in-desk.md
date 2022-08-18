# storage concepts

- table
- row_id
- page
- io
- heap data structure
- index data structure b-tree
- example of query

# row_id

- system-maintained row
- DBS deal with row-id for performance

# page

- database get pages, not 1 row, in a single I/O

# IO

- read / write to disk
- IO get 1 whole page
- expensive and want to avoid

# Heap

- Heap contains all data, all pages
- heap is expensive because it has everything
- use index to access heap effectively

# index

- another data structure like `heap`
- pointer to fetch data from `heap` efficient manner
