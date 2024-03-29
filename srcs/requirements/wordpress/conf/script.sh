#!/bin/bash

/etc/init.d/php7.4-fpm start
/etc/init.d/php7.4-fpm stop

php-fpm7.4 -F
