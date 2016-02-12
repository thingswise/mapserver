FROM python:2

RUN apt-get update

RUN apt-get install -y mapserver-bin lighttpd
RUN apt-get clean all

COPY lighttpd.conf /lighttpd.conf

VOLUME /map

CMD ["lighttpd", "-D", "-f", "/lighttpd.conf"]
