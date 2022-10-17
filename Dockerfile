  # syntax=docker/dockerfile:1

FROM ubuntu


RUN apt-get -y update && apt-get -y install nginx

COPY default /etc/nginx/sites-available/mydefault

EXPOSE 80/tcp

CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]
