#!/bin/bash
set -e

function create_database {
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE USER $1 WITH PASSWORD '$(cat /run/secrets/$1_db_password)';
  CREATE DATABASE $1 OWNER $1 TABLESPACE $1;
EOSQL
}

create_database cachet
create_database nextcloud
