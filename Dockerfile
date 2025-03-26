FROM php:8.2-apache

# Cài đặt các extension cần thiết
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy mã nguồn vào container
COPY . /var/www/html/

# Cấp quyền cho thư mục
RUN chown -R www-data:www-data /var/www/html

