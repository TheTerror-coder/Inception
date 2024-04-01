###HOST COUCHE###
FROM debian:11

###APT UPDATE###
RUN apt update -y

RUN mkdir -p /var/www/

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

###RESTRICTIONS ON SERVER ROOT DIRECTORY###

COPY ./conf/virtual_server.conf		/etc/nginx/conf.d/.
COPY ./tools/script.sh				/etc/init.d/init_script

RUN chmod 500 /etc/init.d/init_script

EXPOSE 443

CMD ["/etc/init.d/init_script"]
