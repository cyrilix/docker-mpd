FROM debian:jessie
MAINTAINER Cyrille Nofficial<cynoffic@cyrilix.fr>


RUN apt update &&\
    apt install mpd

VOLUME /var/lib/mpd
VOLUME /etc/mpd.conf

CMD mpd --no-daemon /etc/mpd.conf
