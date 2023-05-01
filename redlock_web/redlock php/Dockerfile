# Use the official PHP 8.1.x image as the base image
FROM php:8.1-apache

# Set working directory to /var/www/html
WORKDIR /var/www/html

# Copy contents of the web directory to the container
COPY ./web /var/www/html

# Set ownership and permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R ug-w,o-rwx /var/www/html

# Install mysqli extension for database access
RUN docker-php-ext-install mysqli

# Copy the redlock-db.sql file to the container
COPY ./redlock-db.sql /docker-entrypoint-initdb.d/

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
