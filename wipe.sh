#!/usr/bin/env bash

docker stack rm blog
docker stack rm drive
docker stack rm irc
docker stack rm matrix
docker stack rm monitoring
docker stack rm paste
docker stack rm rp
docker stack rm torrent
docker stack rm vpn
# docker network prune -f
# docker system prune -f
# docker volume prune -f
# docker rmi $(docker images -q)
