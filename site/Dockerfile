#
# Docker file for opencart
#

FROM php:5.6-apache
MAINTAINER kev<noreply@datageek.info>

VOLUME ["/var/www/html"]
RUN a2enmod rewrite

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mcrypt mbstring mysqli zip

WORKDIR /var/www/html

ENV OPENCART_VER 2.0.3.1
ENV OPENCART_MD5 222c20ee61a4ff280f55fb0ea688c746
ENV OPENCART_URL https://github.com/opencart/opencart/archive/2.0.3.1.tar.gz
ENV OPENCART_FILE opencart.tar.gz

RUN chown -R www-data:www-data .
