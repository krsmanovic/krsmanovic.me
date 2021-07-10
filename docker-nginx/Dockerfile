FROM nginx:1.21.0-alpine

RUN apk add certbot certbot-nginx && \
    rm -rf /etc/nginx/conf.d/default.conf /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh && \
    mkdir /etc/letsencrypt

EXPOSE 80 443

COPY ./conf/nginx.conf /etc/nginx/nginx.conf