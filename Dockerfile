FROM vungle/docker-base
MAINTAINER Dev Ops <devops@vungle.com>

RUN apk --update add erlang && rm -rf /var/cache/apk/*

ENV ELVIS_VERSION 0.2.10

RUN wget -o /usr/bin/elvis https://github.com/inaka/elvis/releases/download/$ELVIS_VERSION/elvis && chmod +x /usr/bin/elvis
