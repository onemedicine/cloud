#!/bin/bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $WKDIR/.env

sudo mkdir -p $DATA_DIR/{nextcloud/apps,nextcloud/config,nextcloud/data,postgres,redis,torrent}
sudo chown 33:33 $DATA_DIR/nextcloud $DATA_DIR/nextcloud/apps $DATA_DIR/nextcloud/config $DATA_DIR/nextcloud/data
sudo chown 70:70 $DATA_DIR/postgres
sudo chown 100:101 $DATA_DIR/redis

# Redis settings
sudo sysctl vm.overcommit_memory=1
sudo sysctl net.core.somaxconn=4096
echo never | sudo tee /sys/kernel/mm/transparent_hugepage/enabled
echo never | sudo tee /sys/kernel/mm/transparent_hugepage/defrag
sudo sysctl -p
