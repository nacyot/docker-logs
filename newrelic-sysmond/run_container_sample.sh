docker run -d \
  -v /proc:/chroot/proc:ro \
  -v /etc/resolv.conf:/chroot/etc/resolv.conf \
  -e NEW_RELIC_LICENSE_KEY=$NEW_RELIC_LICENSE_KEY \
  -e NEW_RELIC_HOST_NAME=abcd1234 \
  -h abcd1234 \
  nacyot/new-relic
