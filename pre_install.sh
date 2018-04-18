#!/bin/bash

WKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $WKDIR/.env

git submodule add https://github.com/mailpile/mailpile

sudo mkdir -p $DATA_DIR/{nextcloud/apps,/nextcloud/config,/nextcloud/data,postgres,solr,redis,nginx,elasticsearch,mailpile}
sudo chown 33:33 $DATA_DIR/nextcloud $DATA_DIR/nextcloud/apps $DATA_DIR/nextcloud/config $DATA_DIR/nextcloud/data
sudo chown 70:70 $DATA_DIR/postgres
sudo chown 8983:8983 $DATA_DIR/solr
sudo chown 100:101 $DATA_DIR/redis
sudo chown 100:101 $DATA_DIR/nginx
sudo chown 1000:1000 $DATA_DIR/elasticsearch
sudo chown 33411:33411 $DATA_DIR/mailpile

sudo sysctl vm.overcommit_memory=1
sudo sysctl net.core.somaxconn=4096
echo never | sudo tee /sys/kernel/mm/transparent_hugepage/enabled
echo never | sudo tee /sys/kernel/mm/transparent_hugepage/defrag
sudo sysctl -p
