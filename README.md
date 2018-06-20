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

## Shopping list

- [x] LetsEncrypt via Traefik
- [x] Synchronisation (via Nextcloud (alternative, SyncThing))
- [ ] Backup (via Duplicati)
- [ ] Media via Plex
- [X] IRC via TheLounge
- [ ] Torrents via Transmission web
- [ ] Books via COPS
- [ ] VPN via SoftEther
- [ ] Money stuff via Kresus
- [ ] Mail via Mailu

## Gotta play with

- [ ] cAdvisor
- [ ] Cachet
- [ ] Portainer
