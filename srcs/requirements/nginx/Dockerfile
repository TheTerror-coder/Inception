###HOST COUCHE###
FROM debian:11

###APT UPDATE###
RUN apt update -y

###NGINX & OPENSSL COUCHES###
RUN apt install nginx \
	openssl -y

RUN mkdir -p /etc/nginx/ssl && \
	chown -R www-data:www-data /etc/nginx/ssl/ && \
	chmod 700 /etc/nginx/ssl/ && \
	openssl req -x509 -nodes -out /etc/nginx/ssl/nginx.cert \
	-keyout /etc/nginx/ssl/nginx.key  \
	-subj /C=FR/ST=AURA/L=LYON/O=42/OU=42/CN=jfaye/E=jfaye@student.42lyon.fr

COPY ./conf/virtual_server.conf		/etc/nginx/conf.d/.
COPY ./tools/script.sh				/etc/init.d/init_script

RUN chmod 500 /etc/init.d/init_script

EXPOSE 443

CMD ["/etc/init.d/init_script"]
