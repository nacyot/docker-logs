FROM ubuntu:14.04
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN \
  apt-get update &&\
  apt-get install -y --force-yes libssl0.9.8
  
RUN \
  curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh
  mkdir -p /var/log/td-agent

ENV GEM_HOME /usr/lib/fluent/ruby/lib/ruby/gems/1.9.1/
ENV GEM_PATH /usr/lib/fluent/ruby/lib/ruby/gems/1.9.1/
ENV PATH /usr/lib/fluent/ruby/bin:$PATH

ADD ./config/td-agent.conf /etc/td-agent/td-agent.conf 
EXPOSE 24224
CMD ["td-agent"]

