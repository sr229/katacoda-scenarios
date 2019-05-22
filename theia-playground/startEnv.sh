#!/bin/sh

if [ ! -f "/usr/bin/wget"  ]; then
  sudo apt-get -y install wget
fi

# Install stage
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get -qy install nodejs yarn && \
    yarn;

node --always-compact --max-old-space-size=64 $HOME/src-gen/backend/main.js $HOME/projects --hostname=0.0.0.0 --no-cluster