#!/bin/bash
set -e

function create_database {
mysql <<-EOSQL
  DROP USER IF EXISTS '$1';
  CREATE USER '$1'@'%' IDENTIFIED BY '$(cat /run/secrets/$1_db_password)';
  CREATE DATABASE IF NOT EXISTS $1;
  GRANT ALL ON $1.* TO '$1'@'%';
  FLUSH PRIVILEGES;
EOSQL
}

create_database ghost
