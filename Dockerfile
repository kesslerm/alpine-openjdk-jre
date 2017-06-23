FROM alpine:3.6
LABEL maintainer="Magnus Kessler <Magnus.Kessler@gmx.net>"

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN apk update; \
    apk add openjdk8-jre-base; \
    rm -rf /tmp/* /var/cache/apk/*

CMD ["java", "-version"]
