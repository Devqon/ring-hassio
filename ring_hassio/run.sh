#!/bin/bash
CONFIG_PATH=/data/options.json
export RING_PORT="$(jq --raw-output '.port' $CONFIG_PATH)"
export RING_REFRESH_TOKEN="$(jq --raw-output '.ring_refresh_token' $CONFIG_PATH)"

cd /ring-hassio/ring_hassio
node livestream.js
