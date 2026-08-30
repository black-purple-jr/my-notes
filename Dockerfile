# syntax=docker/dockerfile:1

# --------------------------------------------------
# Stage 1: Install Composer dependencies
# --------------------------------------------------
FROM composer:2 AS composer

WORKDIR /app

COPY composer.json composer.lock ./

RUN composer install \
  --no-dev \
  --no-interaction \
  --prefer-dist \
  --optimize-autoloader


# --------------------------------------------------
# Stage 2: PHP + Apache
# --------------------------------------------------
FROM php:8.2-apache

# Install PHP extensions required by the application
RUN docker-php-ext-install \
  pdo \
  pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Use PHP production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Application directory
WORKDIR /var/www/html

# Copy Composer dependencies
COPY --from=composer /app/vendor ./vendor

# Copy application source
COPY . .

# Make Apache's document root available to the application
RUN chown -R www-data:www-data /var/www/html

# Apache listens on port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]