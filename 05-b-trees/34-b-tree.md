# B-Tree

- balanced data structure for fast traversal
  - goal is minimize search space
- B-tree has Nodes
- In B-Tree of "m" degree some nodes can have (m) child nodes
- Node has up to (m-1) elements

- each element has a key and a value
- the value is usually data pointer to the row
- data pointer can point to primary key or tuple
- Root node, internal node (node in the middle of root and leaf) and leaf node(the last nodes, no child)
- [!] A node = A page
