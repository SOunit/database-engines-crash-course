# serializable vs repeatable-read

- serialize - one by one
- repeatable-read - concurrency update

## repeatable-read

### original data

- `a,a,b,b`

### tx1

- update `a to b`, `b, b, b, b`

### tx2

- update `b to a`, `a, a, a, a`

### result

- `b, b, a, a`

## serializable

### original data

- `a,a,b,b`

### tx1

- update `a to b`, `b, b, b, b`

### tx2

- update `b to a`, `a, a, a, a`
- then error, because other transaction updated data
- recommend to retry
