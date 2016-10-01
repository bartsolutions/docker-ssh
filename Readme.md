# A minimal configuration to set up a docker with SSH access
### How to Use:
1. Modify password in `Dockerfile`
2. Build docker image: `docker build -t docker-ssh .`
3. Run docker instance: `docker-compose up -d` (Alternatively, use this command if you don't have `docker-compose`: `docker run -d -p 2022:22 -t --name=docker-ssh docker-ssh`)
4. Log into server: `ssh root@localhost -p 2022`
