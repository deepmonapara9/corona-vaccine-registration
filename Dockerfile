# Use the official PHP image with Apache
FROM php:8.0-apache

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy app files to the container
COPY . /var/www/html/


# Set working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80
