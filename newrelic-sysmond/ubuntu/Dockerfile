FROM ubuntu:14.04

RUN \
  apt-get update &&\
  apt-get install -y wget

RUN \
  echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list &&\
  wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add - &&\
  apt-get update &&\
  apt-get install -y -qq newrelic-sysmond

# Initialize chroot
RUN \
  bash -c "mkdir -p /chroot/{root,tmp,opt}" &&\
  bash -c "cp -r /{lib,lib64,bin,usr,etc} /chroot/"

ADD ./run.sh /root/run.sh
RUN chmod +x /root/run.sh

ENV NEW_RELIC_LICENSE_KEY ''

CMD /root/run.sh
