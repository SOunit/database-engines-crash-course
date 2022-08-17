# Isolation

- Can my inflight transaction see changes made by other transactions?
- Read phenomena
- Isolation level

# Read phenomena

- Dirty reads
  - can read changes which is not committed yet, can be rollback yet
- Non Repeatable reads
  - ???
- Phantom reads
  - ???
- Lost updates

# Dirty Read

- read not committed changes in another transaction

- BEGIN TX1

  - SELECT PID, QNT\*PRICE FROM sales

    - Product1, 50
    - Product2, 80

  - TX2 run

  - SELECT SUM(QNT\*PRICE) FROM sales

    - $155, not $130, because of dirty read regulation

  - COMMIT TX1

- BEGIN TX2
  - UPDATE sales SET qnt = qnt + 5 where pid = 1
  - ROLLBACK TX2

# Non-Repeatable read

- commit finish in TX2 middle of TX1
- TX1 get effected by TX2

- BEGIN TX1
- SELECT -> report from old data
- SELECT -> report from updated data
- COMMIT TX1

# Phantom read

- select and result is 2 records in TX1
- insert new record in TX2 and commit
- select and result is 3 records in TX1

# Lost update

- TX1 update record
- TX2 update record too and overwrite the change from TX1

# Isolation levels for inflight transactions

- to fix read phenomena
- Read uncommitted

  - no isolation, any change from the outside is visible to the transaction, committed or not

- Read committed

  - is visible once commit in outer transaction
  - popular, default, not isolated

- Repeatable Read

  - can get same result in a transaction, prevent non-repeatable
    read

- Snapshot

  - isolation
  - expensive

- Serializable
  - transaction run one after the other, no more concurrency
  - super slow

# database implementation of isolation

## Pessimistic

- Row level rocks, table locks, page locks to avoid lost updates
- expensive, cost a lot, low performance

## Optimistic

- No locks, track if change happens and error if so
- popular, preferred by many people

# summary

- read phenomena
- isolation level
- implementation of pessimistic, optimistic
