# Use the official PHP image with Apache
FROM php:8.2-apache

# Install PHP extensions if needed (e.g., mysqli, pdo)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (important for frameworks like CI or Laravel)
RUN a2enmod rewrite

# Copy app files to the container
COPY . /var/www/html/

# Set permissions (optional, based on your app)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Set Apache document root to /var/www/html/public if using Laravel or similar
# RUN sed -i 's|/var/www/html|/var/www/html/public|g' /etc/apache2/sites-available/000-default.conf
