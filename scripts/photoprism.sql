-- DROP USER IF EXISTS 'photoprism';
-- CREATE USER 'photoprism'@'%' IDENTIFIED BY 'hT9JmJ3DLZ9tQUsB2x24YpunLXYkHfAY' MAX_USER_CONNECTIONS 1024;
-- CREATE DATABASE IF NOT EXISTS photoprism CHARACTER SET = 'utf8mb4' COLLATE = 'utf8mb4_unicode_ci';
-- GRANT ALL privileges ON `photoprism`.* TO 'photoprism'@'%';
-- FLUSH PRIVILEGES;

CREATE USER photoprism WITH PASSWORD 'hT9JmJ3DLZ9tQUsB2x24YpunLXYkHfAY';
CREATE DATABASE photoprism TEMPLATE template0 ENCODING 'UTF8';
ALTER DATABASE photoprism OWNER TO photoprism;
GRANT ALL PRIVILEGES ON DATABASE photoprism TO photoprism;
