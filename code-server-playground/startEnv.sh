#!/bin/sh

echo "Running setup, this may take a while.";

# cuRL is a massive b*tch sometimes so we'll use wget

if [ ! -f "/usr/bin/wget"  ];
  sudo apt-get install wget
fi

cd $HOME

# for maintainers: please use ONLY the stable latest versions.

coder_version="1.939-vsc1.33.1"


wget -qO - "https://github.com/cdr/code-server/releases/download/1.939-vsc1.33.1/code-server${code_server}-linux-x64.tar.gz" | tar-xzvf && \
     cd code-server$coder_version/ && \
     chmod +x code-server && \
     code-server --allow-http --password=katacoda --port=3000
