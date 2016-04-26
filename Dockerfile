FROM vungle/docker-base
MAINTAINER Dev Ops <devops@vungle.com>

RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN apk --update add ncurses-libs erlang && rm -rf /var/cache/apk/*

ENV ELVIS_VERSION 0.2.10

RUN wget -o /usr/bin/elvis https://github.com/inaka/elvis/releases/download/$ELVIS_VERSION/elvis && chmod +x /usr/bin/elvis
