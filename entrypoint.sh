#!/bin/sh
set -e
: "${UUID:?env UUID required}"
: "${WS_PATH:=/ray}"
sed -i "s/__PORT__/${PORT:-8080}/; s/__UUID__/${UUID}/; s#__WS_PATH__#${WS_PATH}#" /usr/local/etc/xray/config.json
exec /usr/local/bin/xray run -config /usr/local/etc/xray/config.json
