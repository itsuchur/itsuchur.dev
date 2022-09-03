FROM debian:stable-slim

RUN apt-get update

RUN apt-get install nginx -y

COPY nginx.conf /etc/nginx/

RUN rm -f nginx.conf

COPY . /var/www/html/

EXPOSE 80/tcp

# CMD ["iptables -I INPUT -p tcp -m multiport --dports http,https -s 103.21.244.0/22 -j ACCEPT"]

CMD ["nginx", "-g", "daemon off;"]