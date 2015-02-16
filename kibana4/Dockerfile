FROM dockerfile/java:oracle-java7

RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-rc1-linux-x64.tar.gz &&\
  tar xvzf kibana-4.0.0-rc1-linux-x64.tar.gz && \
  mv /tmp/kibana-4.0.0-rc1-linux-x64 /kibana

ENV KIBANA_PORT 5601
ENV KIBANA_HOST 0.0.0.0
ENV ES_HOST example.es.com
ENV ES_PORT 9200
ENV KIBANA_INDEX .kibana
ENV APP_ID discover
ENV REQUEST_TIMEOUT 300000
ENV SHARD_TIMEOUT 0
ENV VERIFY_SSL false

ADD config/kibana.yml /kibana/config/kibana.yml
ADD ./setup_configs.sh /kibana/setup_configs.sh
ADD ./run.sh /kibana/run.sh
RUN chmod +x /kibana/run.sh /kibana/setup_configs.sh

WORKDIR /kibana
EXPOSE 5601
CMD ./setup_configs.sh && ./run.sh
