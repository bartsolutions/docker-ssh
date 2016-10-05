# A minimal configuration to set up a docker with SSH access
### How to Use:
1. Install docker: 
 * For Ubuntu 16.04: `apt-get install docker.io` 
 * For others: check [the official documentation](https://docs.docker.com/engine/installation/)
2. Install docker-compose:
 * ```curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose```
 * `chmod +x /usr/local/bin/docker-compose`
 * `ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose`
1. Modify SSH password in `Dockerfile`
3. Run docker instance: `docker-compose up -d` 
4. Log into server: `ssh root@localhost -p 2022`
