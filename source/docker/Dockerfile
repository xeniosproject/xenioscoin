FROM debian:stretch
LABEL maintainer="Xenios Developers <dev@xenios.org>"
LABEL description="Dockerised XeniosCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
