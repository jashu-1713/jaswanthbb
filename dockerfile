FROM ubuntu:18.04
  LABEL name=apache maintainer=YOUR_NAME
  ENV HELLO="WORLD"
  RUN  apt-get update && apt-get install -y apache2 curl net-tools
  COPY ./index.html /var/www/html/index.html
  ENTRYPOINT apachectl -D FOREGROUND
  EXPOSE 80
