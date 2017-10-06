FROM alpine:latest

MAINTAINER kale@franz.io

RUN apk update \
    && apk add squid \
    && apk add curl \
    && apk add apache2-utils \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
