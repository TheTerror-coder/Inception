#!/bin/bash

if ! test -f $__HEALTH
then
	/etc/init.d/mariadb start

	printf "\nn\nn\ny\ny\ny\ny\n" | mysql_secure_installation -u root -p$(cat $__DB_ROOT_PASSWORD_FILE)

	mysql -e "CREATE DATABASE IF NOT EXISTS $__WP_DB_NAME;" \
		-e "CREATE USER IF NOT EXISTS '$__SQL_ADMIN_NAME'@'localhost' \
			IDENTIFIED BY '$(cat $__DB_PASSWORD_FILE)';" \
		-e "GRANT ALL PRIVILEGES ON $__WP_DB_NAME.* TO \
			'$__SQL_ADMIN_NAME'@'%' \
			IDENTIFIED BY '$(cat $__DB_PASSWORD_FILE)';" \
		-e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$(cat $__DB_ROOT_PASSWORD_FILE)';"

	mysql -u root -p$(cat $__DB_ROOT_PASSWORD_FILE) -e "FLUSH PRIVILEGES;"

	mysqladmin -u root -p$(cat $__DB_ROOT_PASSWORD_FILE) shutdown

	touch $__HEALTH && chmod 400 $__HEALTH
fi

mysqld
