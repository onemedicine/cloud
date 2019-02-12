#!/usr/bin/env bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker network create --driver overlay apps
docker stack deploy --compose-file ./traefik/docker-compose.yml rp
docker stack deploy --compose-file ./cloudtorrent/docker-compose.yml dl
