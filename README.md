# Island

Just my own little cloud via Docker

## Setup

### Scripted part

First is `pre_install.sh`

Then `start.sh`

Finally `post_install.sh`

### Manual steps

To be automated

In `/data/nextcloud/config/config.php`, replace `'memcache.local' => '\\OC\\Memcache\\APCu',` by the following

```
'memcache.local' => '\\OC\\Memcache\\Redis',
'redis' => array(
   'host' => 'redis',
   'port' => 6379,
),
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
- [ ] IRC via TheLounge
- [ ] Torrents via Transmission web
- [ ] Books via COPS
- [ ] VPN via OpenVPN AS
- [ ] Money stuff via Kresus
- [ ] Mail via Mailu

## Gotta play with

- [ ] cAdvisor
- [ ] Cachet
- [ ] Portainer
