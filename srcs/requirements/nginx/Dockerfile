FROM debian:11

RUN apt-get update && apt-get install -y nginx
RUN mkdir -p /etc/nginx/ssl

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./tools/* /etc/nginx/ssl

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
