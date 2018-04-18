#!/bin/bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker-compose -f "$WKDIR/docker-compose.yml" down
docker network prune -f
docker system prune -f
docker volume prune -f
docker rmi $(docker images -q)
