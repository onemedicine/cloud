FROM nextcloud:15
RUN apt-get update && \
    apt-get install -y php-imagick imagemagick-6-common && \
    apt-get clean
ADD config.php /var/www/html/config/
