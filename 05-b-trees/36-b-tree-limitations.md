# Limitation B-Tree

- Elements in all nodes store both key and value
  - internal nodes take more space thus require more IO and can slow down traversal
- Range queries are slow because of random access(give me all 1 - 5)
- B+Tree solves both these problems
