#!/bin/sh

echo "Running setup, this may take a while.";

apt update && apt -y install lxd

# cuRL is a massive b*tch sometimes so we'll use wget

if [ ! -f "/usr/bin/wget"  ]; then
  sudo apt-get -y install wget
fi