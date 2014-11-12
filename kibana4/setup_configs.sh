#!/bin/bash

sed -i -e "s/::\(KIBANA_HOST\)::/${KIBANA_HOST}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(KIBANA_PORT\)::/${KIBANA_PORT}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(ES_HOST\)::/${ES_HOST}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(ES_PORT\)::/${ES_PORT}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(KIBANA_INDEX\)::/${KIBANA_INDEX}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(APP_ID\)::/${APP_ID}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(REQUEST_TIMEOUT\)::/${REQUEST_TIMEOUT}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(SHARD_TIMEOUT\)::/${SHARD_TIMEOUT}/g" /kibana/config/kibana.yml
sed -i -e "s/::\(VERIFY_SSL\)::/${VERIFY_SSL}/g" /kibana/config/kibana.yml

