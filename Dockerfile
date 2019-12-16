FROM php:5.6-apache
MAINTAINER Wagner Correa Ramos <w6ramos@gmail.com>
LABEL Description="php5.6 and Apache2.4 stack, based on Debian." \
	License="Apache License 2.0" \
	Usage="docker run -d -p [HOST WWW PORT NUMBER]:8080 -p [HTTPS WWW PORT]:8443 -v [HOST WWW DOCUMENT ROOT]:/var/www/http -v [HOST WWW LOG DIR]:/var/log/apache2 -v [APACHE CONFIG DIR]:/etc/apache2 wcramos/myphp5" \
	Version="1.0"
RUN apt-get update -y && apt-get upgrade -y

RUN sed -s -i -e "s/80/8080/" /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf && \
    sed -s -i -e "s/443/8443/" /etc/apache2/ports.conf /etc/apache2/sites-available/default-ssl.conf && \
    cp -R /etc/apache2 /tmp && \
    useradd -m -u 2001 -s /bin/bash apache && \
    chown -R apache:apache /var/www /etc/apache2 /var/log/apache2

USER apache
VOLUME /var/www/http
VOLUME /var/log/apache2
VOLUME /etc/apache2

EXPOSE 8080
EXPOSE 8443
