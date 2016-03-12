#
# Docker file for opencart
#

FROM php:5.6-apache
MAINTAINER kev<noreply@datageek.info>

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libmcrypt-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mcrypt mbstring mysqli zip

WORKDIR /var/www/html

ENV MYCNCART_VER 1.2.0.1
ENV MYCNCART_URL https://github.com/mycncart/mycncart/archive/mycncart-${MYCNCART_VER}.tar.gz
ENV MYCNCART_FILE mycncart.tar.gz

RUN curl -sSL ${MYCNCART_URL} -o ${MYCNCART_FILE} \
     && echo "${MYCNCART_FILE} downloaded" \
     && tar xzf ${MYCNCART_FILE}  --strip 1 \
     && mv config-dist.php config.php \
     && mv admin/config-dist.php admin/config.php \
     && rm ${MYCNCART_FILE} \
     && chown -R www-data:www-data .
