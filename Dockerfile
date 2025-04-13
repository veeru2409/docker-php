# Use the official PHP image with Apache
FROM php:8.0-apache

# Install PHP extensions if needed (e.g., mysqli, pdo)
RUN docker-php-ext-install mysqli pdo pdo_mysql

