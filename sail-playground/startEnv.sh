#!/bin/sh

echo "Running setup, this may take a while.";


# maintainers: make sure to edit this instead of the entire URL.
sail_version="v1.0.1"

wget -qO - https://github.com/cdr/sail/releases/download/$sail_version/sail-linux-amd64.tar | tar -xvf

cd sail-linux-amd64 && \
   chmod -R 755 sail && \
   cp -vRf ./sail /usr/bin;
cd ..

rm -rf sail-linux-amd64;



