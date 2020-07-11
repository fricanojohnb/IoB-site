FROM centos:latest
RUN yum install -y httpd
RUN httpd --version
COPY /index.html /var/www/html/
COPY /images/* /var/www/html/images/
COPY /src/* /var/www/html/src/
COPY /config/httpd.conf /etc/httpd/conf/httpd.conf

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
