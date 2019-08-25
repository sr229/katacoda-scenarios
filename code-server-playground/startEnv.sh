#!/bin/sh

set -eo pipefail

if [ ! -f "/usr/bin/wget"  ]; then
  sudo apt-get -y install wget
fi

mkdir scratchpad

# for maintainers: please use ONLY the stable latest versions.

# coder_version="2.preview.1-vsc1.36.1"

# Disabled cdr builds for now because official releases are broken
# wget -O bin.tgz "https://github.com/cdr/code-server/releases/download/${coder_version}/code-server${coder_version}-linux-x86_64.tar.gz" && \
#     tar -xzvf bin.tgz && \
#     cd code-server$coder_version-linux-x86_64/ && \
#     rm -rf bin.tgz && \
#     chmod +x code-server && \
#     NODE_ARGS="$NODE_ARGS" PASSWORD=katacoda ./code-server --auth=password --port=3000 --host=0.0.0.0 /root/projects

wget -O - https://git.io/fjAJC | tar -xvz && \
    cd code-server* && \
    PASSWORD=katacoda ./code-server --auth=password --port=3000 --host=0.0.0.0 /root/scratchpad
