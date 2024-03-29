### HOST COUCHE ###
FROM debian:bullseye

### APT UPDATE && INSTALL mariadb-server ###
RUN apt update && apt upgrade -y

RUN	apt install mariadb-server -y

# RUN mkdir -p /var/lib/mysql
# RUN mkdir -p /var/run/mysqld

# RUN chown -R mysql:mysql /etc/mysql/
# RUN chown -R mysql:mysql /var/lib/mysql/
# RUN chown -R mysql:mysql /var/run/mysqld/
# RUN chown -R mysql:mysql /etc/init.d/mariadb
# RUN chown -R mysql:mysql /run/mysqld/
# RUN chown -R mysql:mysql /usr/bin/mysql_secure_installation

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/script.sh /script.sh

RUN chmod 500 /script.sh

EXPOSE 3306

CMD ["/script.sh"]
