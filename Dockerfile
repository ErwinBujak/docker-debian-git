FROM debian:stable-20210721-slim
MAINTAINER Erwin Bujak <contact@erwinbujak.eu>

ENV DEBIAN_FRONTEND noninteractive

# setup workdir
RUN mkdir -p /root/work/
WORKDIR /root/work/

# install git and slim down image
RUN apt-get -y update && apt-get -y install git && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

# run a CMD to show git is installed
CMD git help
