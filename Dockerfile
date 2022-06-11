FROM centos:centos7
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://github.com/ramvish52/ramvish/archive/refs/heads/main.zip /var/www/html
WORKDIR /var/www/html
RUN  unzip main.zip
RUN cp -rvf ramvish-main/* .
RUN rm -rf ramvish-main
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
