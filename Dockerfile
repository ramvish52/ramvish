FROM centos:latest
MAINTAINER ramvish52@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/n-agency.zip /var/www/html
WORKDIR /var/www/html
RUN  unzip n-agency.zip
RUN cp -rvf nagency_v1.0/* .
RUN rm -rf nagency_v1.0
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
