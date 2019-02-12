#!/usr/bin/env bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for stack in rp dl
do
  echo ================================================================================ $stack
  echo
  docker stack services $stack
  echo
  docker stack ps $stack --no-trunc
  echo
done
