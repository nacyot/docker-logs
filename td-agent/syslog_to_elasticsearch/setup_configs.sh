#!/bin/bash

perl -i -pe "s|::SYSLOG_TAG::|\\Q{SYSLOG_TAG}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::SYSLOG_FORMAT::|\\Q{SYSLOG_FORMAT}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::SYSLOG_TIME_FORMAT::/\\Q{SYSLOG_TIME_FORMAT}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::ES_TAG::|\\Q{ES_TAG}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::ES_INDEX_NAME::|\\Q{ES_INDEX_NAME}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::ES_TYPE_NAME::|\\Q{ES_TYPE_NAME}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::ES_HOST::|\\Q{ES_HOST}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::ES_PORT::|\\Q{ES_PORT}|g" /etc/td-agent/td-agent.conf
perl -i -pe "s|::FLUSH_INTERVAL::|\\Q{FLUSH_INTERVAL}|g" /etc/td-agent/td-agent.conf
