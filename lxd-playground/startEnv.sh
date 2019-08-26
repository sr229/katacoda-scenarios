#!/bin/sh

set -eo pipefail

echo "Running setup, this may take a while.";

apt install -y lxd lxd-client

lxd init --auto