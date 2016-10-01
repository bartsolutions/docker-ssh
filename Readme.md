# A minimal configuration to set up a docker with SSH access
### How to Use:
 1. Modify password in `Dockerfile`
 2. 
```
docker build -t docker-ssh .
docker run -d -p 2022:22 -t --name=docker-ssh docker-ssh
ssh root@localhost -p 2022
```
