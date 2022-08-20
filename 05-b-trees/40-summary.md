# B-Tree section summary

- `full table scan` is expensive
- introducing B-Tree
- limitation of B-Tree
- introducing B+Tree
- B+Tree consideration
  - value type
    - uuid is complex and internal nodes will be expensive
    - if it's integer, the internal nodes is not expensive, good to use B+Tree
  - memory consumption
