FROM debian
RUN  apt-get -y update && apt-get -y install nginx
COPY default /etc/nginx/sites-available/default
EXPOSE 443/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]