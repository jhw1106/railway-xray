#!/bin/sh
set -e
PORT="${PORT:-8080}"
UUID="${UUID:?UUID env var is required}"
sed -i "s/__PORT__/${PORT}/g; s/__UUID__/${UUID}/g" /etc/xray/config.json
exec /usr/bin/xray -config /etc/xray/config.json
