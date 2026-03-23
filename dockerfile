FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y apache2 mysql-server && \
    apt-get clean
EXPOSE 80 3306
CMD service mysql start && apachectl -D FOREGROUND
