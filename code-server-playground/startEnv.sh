#!/bin/sh

echo "Running setup, this may take a while.";

# Ubuntu might not have net-tools, so we'll install it
apt-get -y install net-tools

# cuRL is a massive b*tch sometimes so we'll use wget

if [ ! -f "/usr/bin/wget"  ]; then
  sudo apt-get -y install wget
fi

# for maintainers: please use ONLY the stable latest versions.

coder_version="1.939-vsc1.33.1"


wget -O bin.tgz "https://github.com/cdr/code-server/releases/download/1.939-vsc1.33.1/code-server${coder_version}-linux-x64.tar.gz" && \
     tar -xzvf bin.tgz && \
     cd code-server$coder_version-linux-x64/ && \
     rm -rf bin.tgz && \
     chmod +x code-server && \
     ./code-server --allow-http --password=katacoda --port=3000 /root
