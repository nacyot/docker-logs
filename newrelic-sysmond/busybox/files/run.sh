#!/bin/sh

nrsysmond-config --set license_key=$NEW_RELIC_LICENSE_KEY
mv /etc/newrelic/nrsysmond.cfg /chroot/etc/newrelic/nrsysmond.cfg
echo "labels=service:$SERVICE_NAME" >> /chroot/etc/newrelic/nrsysmond.cfg
chroot /chroot /bin/nrsysmond -c /etc/newrelic/nrsysmond.cfg -n $NEW_RELIC_HOST_NAME -l /dev/stdout -f
