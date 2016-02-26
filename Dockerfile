# Use ubuntu:14.04 as base image
FROM ubuntu:14.04

# Copy our code into the container
COPY code/ /var/www/symfony

# Fix rights and user
RUN chown -R www-data:www-data /var/www/symfony
USER www-data

VOLUME /var/www/symfony
WORKDIR /var/www/symfony