FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
EXPOSE 80  
WORKDIR /var/www/html
COPY ./project .


CMD ["apachectl", "-D", "FOREGROUND"]

