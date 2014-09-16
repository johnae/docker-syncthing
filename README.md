# Syncthing in Docker

Example usage:
```
docker run -d -e VERSION=0.9.15 -e USER_UID=1337 -e USER_GID=1337 --volumes-from=somename -p 8080:8080 -p 22000:22000
```