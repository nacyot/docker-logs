FROM nacyot/td-agent:latest
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN \
  apt-get update &&\
  apt-get install -y libcurl3 libcurl3-dev &&\
  gem install fluent-plugin-elasticsearch

ENV SYSLOG_TAG syslog.udp
ENV SYSLOG_FORMAT format \/^(?<time>.*?) (?<host_name>.*?) (?<container_name>.*?): (?<event>.*?)$\/
ENV SYSLOG_TIME_FORMAT time_format %Y-%m-%dT%H:%M:%SZ

ENV ES_TAG syslog.**
ENV ES_INDEX_NAME td-agent
ENV ES_TYPE_NAME syslog
ENV ES_HOST elasticsearch.example.com
ENV ES_PORT 9200
ENV FLUSH_INTERVAL flush_interval 3s

ADD ./config/td-agent.conf /etc/td-agent/td-agent.conf 
ADD ./setup_configs.sh /root/setup_configs.sh
ADD ./run.sh /root/run.sh

RUN chmod +x ./run.sh ./setup_configs.sh
EXPOSE 5140/udp
WORKDIR /root

CMD ./setup_configs.sh && ./run.sh
