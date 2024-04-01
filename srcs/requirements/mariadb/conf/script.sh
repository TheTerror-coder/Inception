#!/bin/bash

/etc/init.d/mariadb start

printf "\nn\nn\ny\ny\ny\ny\n" | mysql_secure_installation

mysql -e "CREATE DATABASE IF NOT EXISTS $DATABASE1_NAME;"

mysql -e "CREATE USER IF NOT EXISTS '$SQL_USER_1'@'localhost' IDENTIFIED BY '$SQL_USER_1_PASSWD';"

mysql -e "GRANT ALL PRIVILEGES ON $DATABASE1_NAME.* TO '$SQL_USER_1'@'wordpress_c.inception_inception' IDENTIFIED BY '$SQL_USER_1_PASSWD';"

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$SQL_ROOT_PASSWD';"

mysql -u root -p$SQL_ROOT_PASSWD -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$SQL_ROOT_PASSWD shutdown

# kill $(cat /run/mysqld/mysqld.pid)

mysqld
