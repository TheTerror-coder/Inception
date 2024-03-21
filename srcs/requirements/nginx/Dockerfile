
FROM debian:bullseye-slim

RUN apt update

RUN apt install nginx -y

RUN mkdir /var/www/jfaye/

RUN chown -R www-data:www-data /var/www/jfaye/
RUN chmod 755 /var/www/jfaye/

COPY ./www/box/ /var/www/jfaye/.

COPY ./conf/jfaye.conf /etc/nginx/sites-available/.

RUN ln -s /etc/nginx/sites-available/jfaye.conf /etc/nginx/sites-enabled/jfaye.conf

#run apt install openssl -y

#run apt install vim -y

#run mkdir /etc/nginx/ssl

#run openssl req -x509 -nodes -out /etc/nginx/ssl/nginx.cert \
#	-keyout /etc/nginx/ssl/nginx.key  \
#	-subj /C=FR/ST=AURA/L=LYON/O=42/OU=42/CN=jfaye/E=jfaye@student.42lyon.fr

#COPY ./www/box/ /var/www/
#COPY ./conf/nginx.conf /etc/nginx/conf.d/.

#EXPOSE 8080
