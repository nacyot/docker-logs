FROM dockerfile/ubuntu

RUN \
  apt-get -qq update && \
  apt-get -qq install nodejs npm mongodb git

RUN \
  mkdir /opt/uptime && \
  git clone --depth=1 https://github.com/fzaninotto/uptime.git /opt/uptime && \
  git checkout v3.1 && \
  npm install
  

RUN mkdir /opt/uptime
RUN rm -fr /opt/uptime && git clone --depth=1 https://github.com/fzaninotto/uptime.git  /opt/uptime


WORKDIR /opt/uptime


ADD config_template.yaml /opt/uptime/config/config_template.yaml
RUN rm /opt/uptime/config/default.yaml

ADD run-uptime.sh /opt/run-uptime.sh
RUN chmod +x /opt/run-uptime.sh

EXPOSE 8082

ENTRYPOINT ["/opt/run-uptime.sh"]
CMD ["rootpass"]
