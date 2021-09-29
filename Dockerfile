FROM centos:latest
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/meticulous.zip /var/www/html
WORKDIR /var/www/html
RUN  unzip meticulous.zip
RUN cp -rvf meticulous/* .
RUN rm -rf meticulous
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
