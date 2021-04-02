FROM php:8.0.3-fpm-alpine3.12
RUN docker-php-ext-install pdo pdo_mysql
RUN apk add libzip-dev
RUN docker-php-ext-install zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
