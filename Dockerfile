FROM ubuntu:16.04

WORKDIR /

ADD https://github.com/clemahieu/raiblocks/releases/download/V9.0/rai_node.xz /
ADD etc/apt/apt.conf.d/99force-ipv4 /etc/apt/apt.conf.d/
ADD etc/security/limits.conf /etc/security/limits.conf

RUN \ 
  apt-get update && \
  apt-get install -yy xz-utils && \
  tar xvJf rai_node.xz

EXPOSE 7075 7076
