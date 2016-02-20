FROM ubuntu:14.04

COPY code/ /var/www/symfony

RUN chown -R www-data:www-data /var/www/symfony

USER www-data

VOLUME /var/www/symfony
WORKDIR /var/www/symfony