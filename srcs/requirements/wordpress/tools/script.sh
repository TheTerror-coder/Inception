#!/bin/bash

/etc/init.d/php7.4-fpm start


wp core install --path=/var/www/wordpress --url="$__SITE_URL" --title="$__SITE_TITLE" \
				--admin_user="$__ADMIN_USER" --admin_password="$(cat $__WP_ADMIN_PASSWORD_FILE)" \
				--admin_email="$__ADMIN_EMAIL" --skip-email --allow-root

wp user create $__WP_USER2 $__WP_USER2_EMAIL --path=/var/www/wordpress --url="$__SITE_URL" --user_pass=$(cat $__WP_USER2_PASSWORD_FILE) \
				--allow-root --porcelain

/etc/init.d/php7.4-fpm stop

chown -R www-data:www-data /var/www/wordpress/

touch $__HEALTH && chmod 400 $__HEALTH

php-fpm7.4 -F
