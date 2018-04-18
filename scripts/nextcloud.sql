-- https://docs.nextcloud.com/server/9/admin_manual/configuration_database/linux_database_configuration.html#postgresql-database
CREATE USER nextcloud WITH PASSWORD 'kHgZfYBVsj9X8P5Kw32zpqJh79qG8dZ';
CREATE DATABASE nextcloud TEMPLATE template0 ENCODING 'UNICODE';
ALTER DATABASE nextcloud OWNER TO nextcloud;
GRANT ALL PRIVILEGES ON DATABASE nextcloud TO nextcloud;
