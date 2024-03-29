###HOST COUCHE###
FROM debian:bullseye

###APT UPDATE###
RUN apt update && apt upgrade

RUN mkdir -p /var/www/

RUN apt install php-fpm php-mysql -y && \
	apt install curl -y

RUN curl -o /var/www/wp_package.tar.gz https://wordpress.org/latest.tar.gz

RUN cd /var/www/ && tar -xzf /var/www/wp_package.tar.gz && cd /

RUN rm -rf /var/www/wp_package.tar.gz

RUN mkdir /var/www/jfaye/

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
# COPY ./conf/wp-config.php /var/www/wordpress/wp-config.php
# RUN rm -rf /var/www/wordpress/wp-config-sample.php
COPY ./conf/script.sh /.

RUN chmod 500 /script.sh

EXPOSE 9000

CMD [ "/script.sh" ]
