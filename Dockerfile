FROM alpine:3.3
MAINTAINER Bart Bania <contact@bartbania.com>

RUN echo "http://dl-5.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk --no-cache --update add sphinx \
    && rm -rf /var/cache/apk/* \
    && mkdir -p /var/lib/sphinx/data \
    && mkdir -p /var/log/sphinx \
    && mkdir -p /var/run/sphinx

ADD ./sphinx.conf /etc/sphinx/sphinx.conf
ADD ./index.sh ./searchd.sh /

EXPOSE 9306

ENTRYPOINT ./index.sh

