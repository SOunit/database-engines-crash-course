# how to handle big amount of rows

- brute force
  - questions
    - can I access only to 1 specific column?
    - search less, not entire table?
- create index
  - benefit
    - create b-tree which is focusing on 1 specific column
    - another data structure to access faster
  - questions
    - can I search smaller table?
- horizontal partitioning
  - benefit
    - smaller table and the rows are indexed
  - what is partition?
    - slice the table half
    - partition key to tell which partition you have to access
  - questions
    - another approach?
- sharding
  - what is sharding
    - wrap partition
    - add some complexity to your system
    - two different databases, problems of transaction
  - benefit
    - narrow down the rows you have to tackle
  - questions
    - why do we have to handle so many rows?
- change table design

# database structure

- sharding(different table)
  - partition
    - index
      - row
