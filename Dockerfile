FROM alpine:3.6

MAINTAINER kale@franz.io

RUN apk update \
    && apk add squid=3.5.23-r3 \
    && apk add curl \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
