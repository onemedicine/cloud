# Island

Just my own little cloud via Docker. This is almost working, just a bit experimental... don't panic

## Setup

### Scripted part

First is `pre_install.sh`

Then `start.sh`

Finally `post_install.sh`

### Manual steps

To be automated

In `/data/nextcloud/config/config.php`, setup cache like this

```
?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'redis' => 
  array (
    'host' => 'redis',
    'port' => 6379,
  ),
  'apps_paths' =>
```

Then `docker-compose restart nextcloud`

## Technical stuff

Check Redis being used or not

```
docker exec -ti island_redis_1 redis-cli MONITO
```
