# sample

## read tx1

- begin transaction - default - read committed -
- read products / tx2 commit happens
- read sum / inconsistent in data -> need `snapshot`, so use `repeatable-read`
- rollback

## create sales tx2

- begin transaction
- update products
- insert sales
- commit

## read tx3

- begin transaction isolation level repeatable read
- read products / tx2 commit happens
- read sum / inconsistent in data -> need `snapshot`, so use `repeatable-read`
- rollback
