#!/bin/bash

/etc/init.d/mariadb start

printf "\nn\nn\ny\ny\ny\ny\n" | mysql_secure_installation

mysql -e "CREATE DATABASE IF NOT EXISTS $__WP_DB_NAME;" \
	-e "CREATE USER IF NOT EXISTS '$__SQL_ADMIN_NAME'@'localhost' \
		IDENTIFIED BY '$__SQL_ADMIN_PASSWD';" \
	-e "GRANT ALL PRIVILEGES ON $__WP_DB_NAME.* TO \
		'$__SQL_ADMIN_NAME'@'$__RESOLVED_WP_HOSTNAME' \
		IDENTIFIED BY '$__SQL_ADMIN_PASSWD';" \
	-e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$__SQL_ROOT_PASSWD';" \
&& \
mysql -u root -p$__SQL_ROOT_PASSWD -e "FLUSH PRIVILEGES;" \
&& \
mysqladmin -u root -p$__SQL_ROOT_PASSWD shutdown

touch $__HEALTH && chmod 400 $__HEALTH

mysqld
