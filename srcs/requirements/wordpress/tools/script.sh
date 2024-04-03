#!/bin/bash
# sleep 10

/etc/init.d/php7.4-fpm start


wp core install --path=/var/www/wordpress --url="$__SITE_URL" --title="$__SITE_TITLE" \
				--admin_user="$__ADMIN_USER" --admin_password="$__ADMIN_PASSWD" \
				--admin_email="$__ADMIN_EMAIL" --skip-email --allow-root

/etc/init.d/php7.4-fpm stop

touch $__HEALTH && chmod 400 $__HEALTH

php-fpm7.4 -F
