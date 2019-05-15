-- https://docs.nextcloud.com/server/9/admin_manual/configuration_database/linux_database_configuration.html#postgresql-database
CREATE USER nextcloud WITH PASSWORD '2bc2a915-2b87-4815-8e2d-903903b20092';
CREATE DATABASE nextcloud TEMPLATE template0 ENCODING 'UNICODE';
ALTER DATABASE nextcloud OWNER TO nextcloud;
GRANT ALL PRIVILEGES ON DATABASE nextcloud TO nextcloud;
