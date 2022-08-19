# scan type

- seq table scan
- index scan
- bitmap index scan(postgres)

# seq table scan

- table scan
- worst / but sometimes good for all data fetch

# index scan

- better / except all data fetch

# bitmap index scan

- accessing table every time is expensive
- to avoid that, postgres use bitmap
- use bitmap to fetch all heap you need at once

## steps

- bitmap = array of bit
- postgres create bitmap
- bit number 1 = page number 1
- use bitmap to fetch all heap you need at once
