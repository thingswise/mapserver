FROM python:2.7.12

RUN apt-get update && apt-get -y install mapserver-bin lighttpd && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY lighttpd.conf /lighttpd.conf

VOLUME /map

CMD ["lighttpd", "-D", "-f", "/lighttpd.conf"]
