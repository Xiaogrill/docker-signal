#!/bin/sh

INSTALL_PREFIX=/usr/local/bin

if [ `id -u` != 0 ]; then
  exec sudo `realpath $0` "$@"
fi

set -e

mkdir -p /root/docker/signal || true

cp -r Dockerfile signal /root/docker/signal/

chown -R root:root /root/docker
chmod 600 /root/docker/signal/Dockerfile
chmod 755 /root/docker/signal/signal

cp /root/docker/signal/signal $INSTALL_PREFIX/signal

$INSTALL_PREFIX/signal --build
