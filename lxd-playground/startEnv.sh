#!/bin/sh

set -eo pipefail

snap install lxd

cat <<EOF | lxd init --preseed
config:
  images.auto_update_interval: 15
networks:
- name: lxdbr0
  type: bridge
  config:
    ipv4.address: auto
    ipv6.address: auto
EOF