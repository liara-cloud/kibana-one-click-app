#!/bin/bash

set -e

KIBANA_CONFIG_PATH="/opt/bitnami/kibana/config/kibana.yml"

echo '> Configuring Kibana...'

echo "server.name: $KIBANA_SERVER_NAME" >> "$KIBANA_CONFIG_PATH"
echo "server.publicBaseUrl: $KIBANA_SERVER_PUBLICBASEURL" >> "$KIBANA_CONFIG_PATH"

echo "xpack.screenshotting.browser.chromium.disableSandbox: true" >> "$KIBANA_CONFIG_PATH"

echo '> Kibana configuration has been successfuly finished.'
