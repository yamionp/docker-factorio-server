FROM debian:jessie

MAINTAINER munisystem

ENV APP_VER 0.12.30

RUN apt-get update && apt-get install -y wget tzdata && \
    wget --no-check-certificate -O /tmp/factorio.tar.gz https://www.factorio.com/get-download/`echo $APP_VER`/headless/linux64 && \
    tar zxvf /tmp/factorio.tar.gz && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

WORKDIR factorio
COPY ./start.sh /factorio/start.sh

EXPOSE 34197/udp

ENTRYPOINT ["./start.sh"]
