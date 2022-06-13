FROM centos:latest
MAINTAINER waghmareshinnu5@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/ecourses.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip ecourses.zip
RUN cp -rvf ecourses/* .
RUN rm -rf ecourses.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
