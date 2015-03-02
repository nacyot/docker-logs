FROM nacyot/td-agent:latest
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN \
  apt-get update &&\
  apt-get install -y libcurl3 libcurl3-dev

RUN \
  fluent-gem install fluent-plugin-elasticsearch fluent-plugin-forest \
    fluent-plugin-fields-parser fluent-plugin-rewrite-tag-filter fluent-plugin-record-reformer \
    fluent-plugin-s3

ENV DATA_BIND 0.0.0.0
ENV DATA_PORT 24224

ENV ES_HOST elasticsearch.example.com
ENV ES_PORT 9200
ENV FLUSH_INTERVAL flush_interval 3s

# ENV AWS_KEY_ID 
# ENV AWS_SECRET_KEY
# ENV AWS_BUCKET
ENV AWS_REGION ap-northeast-1

ADD ./config/td-agent.conf /etc/td-agent/td-agent.conf 
ADD ./setup_configs.sh /root/setup_configs.sh
ADD ./run.sh /root/run.sh

RUN chmod +x ./run.sh ./setup_configs.sh
EXPOSE 24224 5140/udp
WORKDIR /root

CMD ./setup_configs.sh && ./run.sh
