#!/bin/bash

set -e

KIBANA_CONFIG_PATH="/opt/bitnami/kibana/config/kibana.yml"
KIBANA_NODE_OPTIONS_PATH="/opt/bitnami/kibana/config/node.options"

echo '> Configuring Kibana...'

# https://www.elastic.co/guide/en/kibana/8.11/production.html#openssl-legacy-provider
sed -i '/--openssl-legacy-provider/d' "$KIBANA_NODE_OPTIONS_PATH"
sed -i '/## enable OpenSSL 3 legacy provider/d' "$KIBANA_NODE_OPTIONS_PATH"

# https://www.elastic.co/guide/en/kibana/master/kibana-encryption-keys.html
/opt/bitnami/kibana/bin/kibana-encryption-keys generate --quiet >> "$KIBANA_CONFIG_PATH"

echo "server.name: $KIBANA_SERVER_NAME" >> "$KIBANA_CONFIG_PATH"
echo "server.publicBaseUrl: $KIBANA_SERVER_PUBLICBASEURL" >> "$KIBANA_CONFIG_PATH"

echo "xpack.screenshotting.browser.chromium.disableSandbox: true" >> "$KIBANA_CONFIG_PATH"

echo '> Kibana configuration has been successfuly finished.'
