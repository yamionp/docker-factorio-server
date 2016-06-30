## docker-factorio-server
[![Build Status](https://travis-ci.org/munisystem/docker-factorio-server.svg?branch=master)](https://travis-ci.org/munisystem/docker-factorio-server)

Dockerfile to build a [Factorio Server](https://www.factorio.com/download-headless/stable) container image.

### Version
latest:0.12.30
stable:0.12.29

### How to use

#### Quick Start

The quickest way to get started:

```
docker run -d \
  -v /srv/docker/factorio/save:/factorio/saves \
  -p 34197:34197/udp \
  yamionp/factorio
```

Use [docker-compose](https://docs.docker.com/compose/):

```
wget https://raw.githubusercontent.com/munisystem/docker-factorio-server/master/docker-compose.yml
docker-compose up -d
```
