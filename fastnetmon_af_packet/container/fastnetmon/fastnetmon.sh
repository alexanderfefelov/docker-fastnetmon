#!/usr/bin/env bash

rm --force /var/run/fastnetmon.pid || true

/opt/fastnetmon/fastnetmon \
  --configuration_file /fastnetmon/fastnetmon.conf \
  --log_file           /fastnetmon/fastnetmon.log
