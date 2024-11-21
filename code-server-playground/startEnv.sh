#!/bin/sh

set -eo pipefail

if [ ! -f "/usr/bin/wget"  ]; then
  sudo apt-get -y install wget
fi

mkdir scratchpad

sed 's/PORT/3000/g' /etc/killercoda/host

curl -fsSL https://code-server.dev/install.sh | sh && \
  clear && \
  PASSWORD=killercoda ./code-server \
    --auth=password \
    --bind-addr=0.0.0.0:3000 \
    --enable-proposed-api \
    /root/scratchpad