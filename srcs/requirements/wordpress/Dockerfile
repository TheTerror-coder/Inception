###HOST COUCHE###
FROM debian:11

###APT UPDATE###
RUN apt update -y && apt upgrade -y

RUN apt install php-fpm \
	php-mysql \
	curl -y

RUN mkdir -p /var/www/ && \
	curl --output-dir /var/www -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x /var/www/wp-cli.phar && \
	mv /var/www/wp-cli.phar /usr/local/bin/wp && \
	curl -o /var/www/wp_package.tar.gz https://wordpress.org/latest.tar.gz && \
	cd /var/www/ && tar -xzf /var/www/wp_package.tar.gz && cd / && \
	rm -rf /var/www/wp_package.tar.gz

COPY ./conf/www.conf			/etc/php/7.4/fpm/pool.d/www.conf
COPY ./conf/wp-config.php		/var/www/wordpress/wp-config.php
COPY ./tools/script.sh			/etc/init.d/init_script

RUN chmod 500 /etc/init.d/init_script

EXPOSE 9000

CMD [ "/etc/init.d/init_script" ]
