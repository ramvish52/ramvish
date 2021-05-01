FROM centos:latest
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/scorilo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip scorilo.zip
RUN cp -rvf HTML\ -\ Scorilo\ 1.0.1/* .
RUN rm -rf HTML\ -\ Scorilo\ 1.0.1
EXPOSE 80
