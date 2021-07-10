FROM nginx:1.21.0-alpine

RUN mkdir /etc/letsencrypt && \
    rm -rf /etc/nginx/conf.d/default.conf /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh

EXPOSE 80 443

COPY ./conf/nginx.conf /etc/nginx/nginx.conf