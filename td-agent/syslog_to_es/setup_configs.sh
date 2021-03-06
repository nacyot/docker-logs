#!/bin/bash

sed -i -e "s/::\(SYSLOG_TAG\)::/${SYSLOG_TAG}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(SYSLOG_FORMAT\)::/${SYSLOG_FORMAT}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(SYSLOG_TIME_FORMAT\)::/${SYSLOG_TIME_FORMAT}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(ES_TAG\)::/${ES_TAG}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(ES_INDEX_NAME\)::/${ES_INDEX_NAME}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(ES_TYPE_NAME\)::/${ES_TYPE_NAME}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(ES_HOST\)::/${ES_HOST}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(ES_PORT\)::/${ES_PORT}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(FLUSH_INTERVAL\)::/${FLUSH_INTERVAL}/g" /etc/td-agent/td-agent.conf
