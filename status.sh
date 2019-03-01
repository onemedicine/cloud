#!/usr/bin/env bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for stack in blog drive irc matrix monitoring paste rp torrent vpn
do
  echo ================================================================================ $stack
  echo
  docker stack services $stack
  echo
  docker stack ps $stack --no-trunc
  echo
done
