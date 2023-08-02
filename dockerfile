FROM centos:latest
RUN yum install -y httpd \
  zip \
  unzip
ADD httpd://www.free.css.com/assets/file/free.css-templaates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/user/sbin/httpd","-D", "FOREGORUND"]
EXPOSE 80
