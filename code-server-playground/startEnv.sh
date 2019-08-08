#!/bin/sh

if [ ! -f "/usr/bin/wget"  ]; then
  sudo apt-get -y install wget
fi

NODE_ARGS="--jitless --max-semi-space-size=1 --max-old-space-size=128 --max-executable-size=96"

# for maintainers: please use ONLY the stable latest versions.

coder_version="2.preview.1-vsc1.36.1"

wget -O bin.tgz "https://github.com/cdr/code-server/releases/download/${coder_version}/code-server${coder_version}-linux-x64.tar.gz" && \
     tar -xzvf bin.tgz && \
     cd code-server$coder_version-linux-x64/ && \
     rm -rf bin.tgz && \
     chmod +x code-server && \
     NODE_ARGS="$NODE_ARGS" PASSWORD=katacoda ./code-server --auth=password --port=3000 /root/projects
 
