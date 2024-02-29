#!/bin/bash


cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php
sed -i "s/database_name_here/$MYSQL_DATABASE/g" /var/www/wordpress/wp-config.php
sed -i "s/username_here/$MYSQL_USER/g" /var/www/wordpress/wp-config.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" /var/www/wordpress/wp-config.php
sed -i "s/localhost/$MYSQL_HOSTNAME/g" /var/www/wordpress/wp-config.php


/usr/sbin/php-fpm7.4 -F