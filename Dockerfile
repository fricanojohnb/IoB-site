FROM centos:latest
RUN yum install -y httpd
RUN httpd --version
COPY /public-html/index.html /var/www/html/
COPY /public-html/images/* /var/www/html/images/
COPY /public-html/src/* /var/www/html/src/
COPY /public-html/config/httpd.conf /etc/httpd/conf/httpd.conf

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
