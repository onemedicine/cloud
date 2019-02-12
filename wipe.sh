#!/usr/bin/env bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker stack remove rp
docker stack remove dl
docker network prune -f
docker system prune -f
docker volume prune -f
docker rmi $(docker images -q)
