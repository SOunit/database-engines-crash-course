# start

```
docker start
```

# run postgres

```
docker exec -it pgacid psql -U postgres
```

# create

```
docker run --name pgacid -d -e POSTGRES_PASSWORD=postgres postgres:13
```

# list containers

```
docker container list -a
```

# list active containers

```
docker ps
```
