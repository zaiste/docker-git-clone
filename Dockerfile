FROM ubuntu:13.10
MAINTAINER Zaiste <oh [at] zaiste.net>

RUN apt-get update
RUN apt-get -y install git

VOLUME /data

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

ENTRYPOINT ["/usr/local/bin/run"]
CMD ["-h"]