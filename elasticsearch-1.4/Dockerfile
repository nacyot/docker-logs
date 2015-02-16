# This image based on https://github.com/dockerfile/elasticsearch (1.3.2)
FROM dockerfile/java:oracle-java7

# Install ElasticSearch.
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.3.tar.gz && \
  tar xvzf elasticsearch-1.4.3.tar.gz && \
  rm -f elasticsearch-1.4.3.tar.gz && \
  mv /tmp/elasticsearch-1.4.3 /elasticsearch

# Define mountable directories.
VOLUME ["/data"]

# Mount elasticsearch.yml config
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300
