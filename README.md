# About this repo

This repo contains https://krsmanovic.me website source code:
* nginx ingress container configuration
* nodejs website application
* script to build docker containers and successfully run docker-compose

# 1) Build containers

Create required containers:

```
./build.sh
```

# 2) Run docker-compose

To have nginx ingress and website backend up and running:

```
docker-compose up -d
```