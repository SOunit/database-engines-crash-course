# full-table scan

- what is table?
  - table is single or multiple file on disk
- read 1 `page` and another, one by one
  - a portion of data on disk is called `page`
- require a lot of I/O on disk to read all pages
- need to reduce the search space
