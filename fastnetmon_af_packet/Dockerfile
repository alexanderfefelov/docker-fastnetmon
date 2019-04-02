FROM ubuntu:18.04

RUN apt-get -qq update \
  && apt-get -qq install --yes --no-install-recommends fastnetmon \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ADD container/ /

VOLUME /etc

CMD ["/usr/sbin/fastnetmon"]
