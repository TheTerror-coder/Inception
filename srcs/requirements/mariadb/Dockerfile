### HOST COUCHE ###
FROM debian:11

### APT UPDATE && INSTALL mariadb-server ###
RUN apt update -y && apt upgrade -y && \
	apt install mariadb-server -y

COPY ./conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sh		/etc/init.d/init_script

RUN chmod 500 /etc/init.d/init_script

RUN /etc/init.d/mariadb start

EXPOSE 3306

CMD ["/etc/init.d/init_script"]
