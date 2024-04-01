###HOST COUCHE###
FROM debian:11

###APT UPDATE###
RUN apt update -y


RUN mkdir -p /var/www/
# RUN mkdir -p /var/www/wordpress/
# RUN apt install php-fpm php-mysql -y && \
# 	apt install curl -y
# RUN curl -o /var/www/wp_package.tar.gz https://wordpress.org/latest.tar.gz
# RUN cd /var/www/ && tar -xzf /var/www/wp_package.tar.gz && cd /
# RUN rm -rf /var/www/wp_package.tar.gz
COPY ./script.sh /.
RUN chmod 500 /script.sh

###NGINX COUCHE###
RUN apt install nginx -y

###OPENSSL COUCHE###
RUN apt install openssl -y
RUN mkdir /etc/nginx/ssl
RUN chown -R www-data:www-data /etc/nginx/ssl/
RUN chmod 700 /etc/nginx/ssl/
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/nginx.cert \
	-keyout /etc/nginx/ssl/nginx.key  \
	-subj /C=FR/ST=AURA/L=LYON/O=42/OU=42/CN=jfaye/E=jfaye@student.42lyon.fr

# RUN mkdir /var/www/jfaye/

###RESTRICTIONS ON SERVER ROOT DIRECTORY###
RUN chown -R www-data:www-data /usr/share/nginx/html/
RUN chmod 755 usr/share/nginx/html/

COPY ./conf/nginx.conf 				/etc/nginx/nginx.conf
COPY ./conf/virtual_server.conf		/etc/nginx/conf.d/.

COPY ./www/box/ /usr/share/nginx/html/.
COPY ./index.php /usr/share/nginx/html/index.php
# COPY ./index.php /var/www/index.php

# RUN ln -s /etc/nginx/sites-available/jfaye.conf /etc/nginx/sites-enabled/jfaye.conf


EXPOSE 443

# CMD ["nginx", "-g", "daemon off;"]
CMD ["/script.sh"]