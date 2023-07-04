FROM debian
RUN  apt-get -y update && apt-get -y install nginx
COPY /conf/my.conf /etc/nginx/conf.d
EXPOSE 443/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]