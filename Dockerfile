FROM ubuntu:18.04 AS build

ARG VERSION_HASH=f1d0f2e

WORKDIR /tmp
RUN  apt-get -qq update \
  && apt-get -qq install --no-install-recommends \
       ca-certificates \
       git \
       wget \
       > /dev/null \
  && git clone https://github.com/pavel-odintsov/fastnetmon.git \
  && cd fastnetmon \
  && git checkout $VERSION_HASH \
  && echo none@inter.net | perl src/fastnetmon_install.pl --use-modern-pf-ring --do-not-track-me \
  && apt-get -qq clean \
  && rm --recursive --force /var/lib/apt/lists/* /tmp/* /var/tmp/*

FROM ubuntu:18.04

COPY container/ /
COPY --from=build /opt /opt

RUN  apt-get -qq update \
  && apt-get -qq install --no-install-recommends \
       ca-certificates \
       libboost-program-options1.65.1 \
       libboost-regex1.65.1 \
       libboost-thread1.65.1 \
       libnuma1 \
       libpcap0.8 \
       openssh-client \
       sshpass \
       > /dev/null \
  && apt-get -qq clean \
  && rm --recursive --force /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/fastnetmon/bin/fastnetmon.sh"]
