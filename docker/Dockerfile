FROM debian:stretch
LABEL maintainer="CbdHealthNetwork Developers <dev@cbdhealthnetwork.org>"
LABEL description="Dockerised CbdHealthNetworkCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
