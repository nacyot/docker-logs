FROM busybox:ubuntu-14.04

WORKDIR /root

RUN \
  wget http://download.newrelic.com/server_monitor/release/newrelic-sysmond-1.5.1.93-linux.tar.gz -O /tmp/sysmond.tar.gz &&\
  tar -C /tmp -xzf /tmp/sysmond.tar.gz && \
  cd /tmp/newrelic-sysmond* && \
  mkdir -p /etc/newrelic &&\
  cp nrsysmond.cfg /etc/newrelic && \
  cp daemon/nrsysmond.x64 /bin/nrsysmond && \
  cp scripts/nrsysmond-config /bin/nrsysmond-config &&\
  rm -rf /tmp/*

RUN \
  mkdir -p /chroot/ &&\
  sh -c "cp -r /lib /chroot/" &&\
  sh -c "cp -r /lib64 /chroot/" &&\
  sh -c "cp -r /bin /chroot/" &&\
  sh -c "cp -r /etc /chroot/" &&\
  sh -c "cp -r /dev /chroot/"

ADD ./files/run.sh /root/run.sh
RUN chmod +x /root/run.sh

ENV NEW_RELIC_LICENSE_KEY LICENSE_KEY
ENV NEW_RELIC_HOST_NAME HOST_NAME
ENV SERVICE_NAME SERVICE_NAME

CMD /root/run.sh
