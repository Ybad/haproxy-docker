FROM ubuntu
MAINTAINER Johannes 'fish' Ziemke <fish@freigeist.org> @discordianfish

RUN apt-get -qy update && apt-get -qy install haproxy ucarp openssl

ADD . /haproxy
RUN chmod +x /haproxy/scripts/ucarp
RUN chmod +x /haproxy/scripts/run

WORKDIR    /haproxy
ENTRYPOINT [ "./scripts/run" ]
