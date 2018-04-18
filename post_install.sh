#!/bin/bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $WKDIR/.env

echo "Create user $ADMIN in TheLounge"
docker exec -ti island_thelounge_1 lounge add $ADMIN


echo "Replace NextCloud default ACPu caching by Redis"
echo "  https://docs.nextcloud.com/server/13/admin_manual/configuration_server/caching_configuration.html#recommendations-based-on-type-of-deployment"
echo "  Redis hostname will be 'redis'"
