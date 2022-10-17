  # syntax=docker/dockerfile:1

FROM ubuntu


RUN apt-get -y update && apt-get -y install nginx

COPY index.html /etc/nginx/sites-available/html

EXPOSE 8000

RUN html
