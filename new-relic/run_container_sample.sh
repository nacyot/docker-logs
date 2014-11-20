docker run -d \
  -v /proc:/chroot/proc:ro \
  -v /sys:/chroot/sys:ro \
  -v /dev:/chroot/dev:ro \
  -v /run:/chroot/run:ro \
  -v /var:/chroot/var:ro \
  -v /etc/resolv.conf:/chroot/etc/resolv.conf \
  -e NEW_RELIC_LICENSE_KEY=$NEW_RELIC_LICENSE_KEY \
  -h `hostname` \
  nacyot/new-relic
