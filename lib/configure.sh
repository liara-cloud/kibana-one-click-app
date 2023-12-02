#!/bin/bash

set -e

KIBANA_CONFIG_PATH="/opt/bitnami/kibana/config/kibana.yml"

echo '> Configuring Kibana...'

# https://www.elastic.co/guide/en/kibana/master/kibana-encryption-keys.html
# /opt/bitnami/kibana/bin/kibana-encryption-keys generate --quiet >> "$KIBANA_CONFIG_PATH"

echo "server.name: $KIBANA_SERVER_NAME" >> "$KIBANA_CONFIG_PATH"
echo "server.publicBaseUrl: $KIBANA_SERVER_PUBLICBASEURL" >> "$KIBANA_CONFIG_PATH"

echo "xpack.screenshotting.browser.chromium.disableSandbox: true" >> "$KIBANA_CONFIG_PATH"

echo '> Kibana configuration has been successfuly finished.'
