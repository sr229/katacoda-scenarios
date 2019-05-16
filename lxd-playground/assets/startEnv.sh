#!/bin/sh

echo "Running setup, this may take a while.";

# Ubuntu might not have net-tools, so we'll install it
snap install lxd --classic

# cuRL is a massive b*tch sometimes so we'll use wget

if [ ! -f "/usr/bin/wget"  ]; then
  sudo apt-get -y install wget
fi