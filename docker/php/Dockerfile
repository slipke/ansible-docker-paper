# Use php:5.5-fpm as base image
FROM php:5.5-fpm

# Install extensions and dependencies for development
RUN apt-get update && apt-get install -y \
    libicu-dev \
    nodejs \
    npm \
    rubygems \
    && docker-php-ext-install mysql pdo_mysql mbstring intl opcache \
    && pecl install apcu-4.0.10 xdebug \
    && echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini

# Install tools to create JS & CSS files
RUN npm install -g uglify-js uglifycss
RUN gem install sass

# Copy our own PHP configurations
ADD xdebug.ini /usr/local/etc/php/conf.d/
ADD symfony.ini /usr/local/etc/php/conf.d/

# Fix rights
RUN usermod -u 1000 www-data

WORKDIR /var/www/symfony