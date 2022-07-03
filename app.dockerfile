FROM php:8.0.5-fpm-alpine

# Get argument defined in docker-compose file
ARG user
ARG uid

RUN apk update && apk add --no-cache --virtual \
    git \
    curl \
    libpng-dev \
    oniguruma-dev \
    libxml2-dev \
    zip \
    unzip \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install exif \
    && docker-php-ext-install pcntl \
    && docker-php-ext-install bcmath \
    && docker-php-ext-install gd \
    && docker-php-source delete

COPY . /var/www/html

# Get latest Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# # Create system user to run Composer and Artisan Commands
RUN adduser -G www-data -u $uid -h /home/$user $user -D
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:www-data /home/$user

# Set working directory
WORKDIR /var/www/html

RUN composer install

RUN ls -la

USER $user
