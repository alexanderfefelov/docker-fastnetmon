#!/usr/bin/env bash

docker run \
  --name fastnetmon_af_packet \
  --detach \
  --privileged \
  --net host \
  --volume /etc/localtime:/etc/localtime:ro \
  --volume fastnetmon:/fastnetmon \
  alexanderfefelov/fastnetmon_af_packet
