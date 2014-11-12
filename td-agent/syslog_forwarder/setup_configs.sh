#!/bin/bash

sed -i -e "s/::\(SYSLOG_TAG\)::/${SYSLOG_TAG}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(SYSLOG_BIND\)::/${SYSLOG_BIND}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(SYSLOG_PORT\)::/${SYSLOG_PORT}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(SYSLOG_FORMAT\)::/${SYSLOG_FORMAT}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(SYSLOG_TIME_FORMAT\)::/${SYSLOG_TIME_FORMAT}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(FORWARD_HOST\)::/${FORWARD_HOST}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(FORWARD_PORT\)::/${FORWARD_PORT}/g" /etc/td-agent/td-agent.conf
sed -i -e "s/::\(FLUSH_INTERVAL\)::/${FLUSH_INTERVAL}/g" /etc/td-agent/td-agent.conf
