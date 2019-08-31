FROM php:7.2-apache
ENV WORKBENCH_VERSION=46.0.0

#get libxml libs for php_soap.so
RUN apt-get update \
    && apt-get install -y libxml2-dev \
    && apt-get install curl \
    && apt-get install -y git

#install php_soap
RUN docker-php-ext-install -j$(nproc) soap \
    && pecl install -o -f redis \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis

#download workbench and unpack it into server root
RUN curl -L "https://github.com/forceworkbench/forceworkbench/archive/${WORKBENCH_VERSION}.tar.gz" -o workbench.tar.gz \
    && tar xzvf workbench.tar.gz \
    && cp -R forceworkbench-${WORKBENCH_VERSION}/* /var/www/html \
    && rm workbench.tar.gz \
    && rm -rf forceworkbench-${WORKBENCH_VERSION}

#install php dependencies
RUN curl -s https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer install --working-dir=/var/www/html

#we use port 80 mostly
EXPOSE 80

#run apache
CMD ["apache2-foreground"]

