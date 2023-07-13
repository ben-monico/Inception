FROM debian:11

RUN apt-get update && apt-get install -y nginx

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./tools /etc/nginx/certificates

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
