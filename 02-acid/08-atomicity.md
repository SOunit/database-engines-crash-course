# Atomicity

- All query should be successful
- if any fail, all prior successful queries in the transaction should rollback

## summary

- no split
- success or (fail + rollback)
