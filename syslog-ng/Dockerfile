FROM nacyot/ubuntu
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN apt-get install -y syslog-ng-core syslog-ng
RUN mkdir /var/log/syslog-ng/
RUN touch /var/log/syslog-ng/logs.txt

ADD ./config/syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

EXPOSE 514/udp
CMD syslog-ng --no-caps -F
