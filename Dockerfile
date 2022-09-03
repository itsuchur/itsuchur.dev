FROM debian:stable-slim

RUN apt-get update

RUN apt-get install nginx -y

COPY nginx.conf /etc/nginx/

COPY . /var/www/html/

RUN rm -f /var/www/html/nginx.conf

EXPOSE 80/tcp

# CMD ["iptables -I INPUT -p tcp -m multiport --dports http,https -s 103.21.244.0/22 -j ACCEPT"]

CMD ["nginx", "-g", "daemon off;"]