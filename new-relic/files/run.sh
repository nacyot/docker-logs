nrsysmond-config --set license_key=$NEW_RELIC_LICENSE_KEY
mv /etc/newrelic/nrsysmond.cfg /chroot/etc/newrelic/nrsysmond.cfg
chroot /chroot /usr/sbin/nrsysmond -c /etc/newrelic/nrsysmond.cfg -l /dev/stdout -f
