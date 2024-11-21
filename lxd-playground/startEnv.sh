#!/bin/sh

set -eo pipefail

snap install lxd

cat <<EOF | lxd init --preseed
config: {}
networks:
- config:
    ipv4.address: auto
    ipv6.address: auto
  description: ""
  managed: false
  name: lxdbr0
  type: ""
storage_pools:
- config:
    size: 15GB
  description: ""
  name: default
  driver: zfs
profiles:
- config: {}
  description: ""
  devices:
    eth0:
      name: eth0
      nictype: bridged
      parent: lxdbr0
      type: nic
    root:
      path: /
      pool: default
      type: disk
  name: default
cluster: null
EOF

# BUG: lxd uses some legacy rules that needs to be flushed.
# https://discuss.linuxcontainers.org/t/containers-do-not-have-outgoing-internet-access/10844/3
for ipt in iptables iptables-legacy ip6tables ip6tables-legacy; do 
  $ipt --flush; $ipt --flush -t nat; $ipt --delete-chain; $ipt --delete-chain -t nat; $ipt -P FORWARD ACCEPT; $ipt -P INPUT ACCEPT; $ipt -P OUTPUT ACCEPT; 
done

systemctl reload snap.lxd.daemon

clear