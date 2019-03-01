#!/usr/bin/env bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker network create --driver overlay apps
docker stack deploy --compose-file ./cloudtorrent/docker-compose.yml torrent
docker stack deploy --compose-file ./glances/docker-compose.yml monitoring
docker stack deploy --compose-file ./hugo/docker-compose.yml blog
docker stack deploy --compose-file ./nextcloud/docker-compose.yml drive
docker stack deploy --compose-file ./privatebin/docker-compose.yml paste
docker stack deploy --compose-file ./riot/docker-compose.yml matrix
docker stack deploy --compose-file ./shadowsocks/docker-compose.yml vpn
docker stack deploy --compose-file ./thelounge/docker-compose.yml irc
docker stack deploy --compose-file ./traefik/docker-compose.yml rp
