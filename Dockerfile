FROM php:7-apache


RUN apt-get update && \
    apt-get install -y libxml2-dev && \
    docker-php-ext-install soap

COPY app/ /var/www/html/