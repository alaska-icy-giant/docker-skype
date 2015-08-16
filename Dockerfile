FROM ubuntu:14.04.2
MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN apt-get install -y software-properties-common
RUN add-apt-repository "deb http://archive.canonical.com/ trusty partner"
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y skype

# Clean up any files used by apt-get
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
