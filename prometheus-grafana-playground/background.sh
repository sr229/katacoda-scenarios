#!/bin/bash

cd /tmp && \
git clone https://github.com/petarnikolovski/prometheus-install/ -b master --depth=1 && \
cd /tmp/prometheus-install && \
sudo bash ./full_installation.sh;