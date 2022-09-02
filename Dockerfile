FROM debian:stable-slim

RUN apt-get update

RUN apt-get install nginx -y

COPY . /var/www/html/

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]