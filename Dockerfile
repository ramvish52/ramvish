FROM centos:latest
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/interior-design.zip /var/www/html
WORKDIR /var/www/html
RUN  unzip interior-design.zip
RUN cp -rvf interior-design/* .
RUN rm -rf interior-design
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
