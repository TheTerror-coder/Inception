#!/bin/bash

# /etc/init.d/php7.4-fpm start
# /etc/init.d/php7.4-fpm stop
/etc/init.d/nginx start
# cp /usr/share/nginx/html/index.php /var/www/
/etc/init.d/nginx stop

# php-fpm7.4
nginx -g "daemon off;"
