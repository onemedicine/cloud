#!/bin/bash

docker exec island_nextcloud_1 bash -c "/bin/sed -i 's;www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin;www-data:x:33:33:www-data:/var/www:/bin/bash;' /etc/passwd; /bin/su - www-data -c '/usr/local/bin/php /var/www/html/occ files:scan --all'"
