# ACID

- A - Atomicity
- C - Consistency
- I - Isolation
- D - Durability

- core concept for build database system
- applies to any database SQL, NoSQL, Graph, etc.

# steps for understanding ACID

- What is transaction?
- Atomicity
- Isolation
- Consistency
- Durability

# transaction

- A collection of queries
- one unit of work
- E.g. Account deposit(SELECT(money), UPDATE(decrease), UPDATE(increase))

# transaction lifespan

- Transaction BEGIN
- Transaction COMMIT(write to hard disk, slow read and write)
- Transaction ROLLBACK(remove from memory, faster read and write)
- Transaction unexpected ending = ROLLBACK(E.g. crash)

# Nature of transaction

- usually transaction is used to change and modify data
- however, read only transaction exists and it is normal
- E.g, create a report with consistent snapshot based at the time of transaction
- more detail in Isolation section

# transaction example

## table

- account_id, balance
- 1, $1000
- 2, $500

## todo

- send $100 from 1 to 2

## steps

- BEGIN TX1
- SELECT balance FROM account WHERE id = 1
- balance >= 100
- UPDATE account SET balance = (balance - $100) where id = 1
- UPDATE account SET balance = (balance + $100) where id = 2
- COMMIT TX1
