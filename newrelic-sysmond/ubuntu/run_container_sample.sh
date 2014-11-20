#!/bin/bash

docker run -d \
  -v /proc:/chroot/proc:ro \
  -v /etc/resolv.conf:/chroot/etc/resolv.conf \
  -e NEW_RELIC_LICENSE_KEY=$NEW_RELIC_LICENSE_KEY \
  -e NEW_RELIC_HOST_NAME=`hostname` \
  -h `hostname` \
  nacyot/newrelic-sysmond:ubuntu
