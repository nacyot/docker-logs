FROM nacyot/ubuntu:12.04
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN curl http://packages.treasuredata.com/GPG-KEY-td-agent | apt-key add -
RUN echo "deb http://packages.treasuredata.com/precise/ precise contrib" > /etc/apt/sources.list.d/treasure-data.list
RUN apt-get update
RUN apt-get install -y --force-yes libssl0.9.8 td-agent
RUN mkdir -p /var/log/td-agent

ENV GEM_HOME /usr/lib/fluent/ruby/lib/ruby/gems/1.9.1/
ENV GEM_PATH /usr/lib/fluent/ruby/lib/ruby/gems/1.9.1/
ENV PATH /usr/lib/fluent/ruby/bin:$PATH

ADD ./config/td-agent.conf /etc/td-agent/td-agent.conf 
EXPOSE 24224
CMD ["td-agent"]

