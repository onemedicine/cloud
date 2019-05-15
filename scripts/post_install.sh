#!/bin/bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $WKDIR/.env

echo "Create user $ADMIN in TheLounge"
docker exec -ti island_thelounge_1 lounge add $ADMIN

