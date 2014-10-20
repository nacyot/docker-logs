#!/bin/sh

HOSTNAME=${HOSTNAME:-"$(hostname)"}
GRAPHITE_HOST=${HOSTNAME:-"172.17.42.1"}
GRAPHITE_PORT=${HOSTNAME:-"2003"}

sed -i "s/__HOSTNAME__/${HOSTNAME}/g" /chroot/opt/diamond.conf
sed -i "s/__GRAPHITE_HOST__/${GRAPHITE_HOST}/g" /chroot/opt/diamond.conf
sed -i "s/__GRAPHITE_PORT__/${GRAPHITE_PORT}/g" /chroot/opt/diamond.conf

chroot /chroot /usr/bin/diamond -f -c /opt/diamond.conf --skip-pidfile --skip-change-user -l
