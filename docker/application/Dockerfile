# Use ubuntu:14.04 as base image
FROM ubuntu:14.04

# Install some dependencies for PHP
RUN apt-get update && apt-get install -y \
    ant \
    nodejs \
    ruby \
    npm \
    git \
    curl \
    php5 \
    php5-cli \
    php5-json \
    php5-intl \
    php5-mysql

# Install tools to create CSS & JS
RUN npm install -g uglify-js uglifycss
RUN gem install sass

# Fix rights
RUN usermod -u 1000 www-data

# Fix PHP warning
RUN sed -i "s@;date.timezone =@date.timezone = Europe/Berlin@" /etc/php5/cli/php.ini

# Install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/symfony
VOLUME /var/www/symfony