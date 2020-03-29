FROM php:7.4

RUN set -ex \
    && apt-get update -yqq \
    && apt-get install -yqq \
    	git \
    	libcurl4-gnutls-dev \
    	libzip-dev \
    	libicu-dev \
    	libxml2-dev \
    	libpq-dev \
    	openssh-client \
    	unzip \
    && docker-php-ext-install \
    	curl \
    	json \
    	intl \
    	xml \
    	zip \
    	opcache \
    	pdo \
    	pdo_pgsql \
    && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
