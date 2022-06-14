FROM centos:latest
MAINTAINER waghmareshinnu5@gmail.com
RUN yum install -y httpd \
 zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/jd.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip jd.zip
RUN cp -rvf jd/.
RUN rm -rf jd.zip
CMD ["/usr/bin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
