FROM centos:latest
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://github.com/ramvish52/starter-web/archive/refs/heads/master.zip /var/www/html
WORKDIR /var/www/html
RUN  unzip master.zip
RUN cp -rvf starter-web-master/* .
RUN rm -rf starter-web-master
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
