FROM php:8.2-apache
ENV TZ=America/El_Salvador
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
LABEL Name=phpaws Version=0.0.1
RUN apt-get update
COPY ./ /var/www/html
WORKDIR /var/www/html
EXPOSE 80
EXPOSE 443
EXPOSE 3306
#CMD [ "php", "/var/www/html/index.php" ]
