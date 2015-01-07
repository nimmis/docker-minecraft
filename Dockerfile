FROM nimmis/java:openjdk-8-jre

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y jq socat rdiff-backup && \
    apt-get clean all

RUN adduser --disabled-password --gecos ",,," --quiet minecraft

ADD minecraft_server /etc/init.d/
