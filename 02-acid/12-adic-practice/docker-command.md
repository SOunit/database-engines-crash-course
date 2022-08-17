# docker postgres command

```
docker run --name pgacid -d -e POSTGRES_PASSWORD=postgres postgres:13
```

```
docker exec -it pgacid psql -U postgres
```
