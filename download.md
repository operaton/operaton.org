---
layout: default
title: 'Download'
---

## Download Operaton

We provide a Docker image for running Operaton:

- [Docker Hub Repositories](https://hub.docker.com/u/operaton)
- [Build scripts & configuration documentation](https://github.com/operaton/operaton-docker)

### Quickstart

#### Start Operaton from your terminal

```shell
docker pull operaton/operaton:latest
docker run -d --name operaton -p 8080:8080 operaton/operaton:latest
```

#### Start Operaton from a docker-compose file

```yaml
services:
  operaton:
    image: operaton/operaton:latest
    ports:
      - "8888:8080"
```