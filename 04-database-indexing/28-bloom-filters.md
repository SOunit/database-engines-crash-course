# bloom filters

# does the user exist?

## traditional but slow approach

- GET /username?q=paul
- node.js access to db
- db return result
- SLOW!!!

## redis approach / inefficient memory

- GET /username?q=paul
- node.js access redis
- node.js access to db if no data on redis
- duplicate data, inefficient memory

## bloom filter approach

- GET /username?q=paul
- node.js check bloom filter
- node.js access to db if data exist in bloom filter,
- it's not perfect, but efficient

# how to create bloom filter

## update bloom filter when create request come to server

- POST /username?q=jack
- node.js keep 64 bit data for bloom filter
- node.js hash(jack) % 64 = 63
- node.js set 63 = 1 in bloom filter

## create paul too

- POST /username?q=paul
- node.js hash(jack) % 64 = 3
- node.js set 63 = 1 in bloom filter

## create tim too

- POST /username?q=tim
- node.js hash(jack) % 64 = 3
- node.js set 63 = 1 in bloom filter

## create ali too

- POST /username?q=ali
- node.js hash(jack) % 64 = 4
- node.js set 63 = 1 in bloom filter

## check bloom filter when create request come
