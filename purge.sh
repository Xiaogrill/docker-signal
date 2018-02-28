#!/bin/sh

INSTALL_PREFIX=/usr/local/bin

if [ `id -u` != 0 ]; then
  exec sudo `realpath $0` "$@"
fi

# rm -r /home/$SUDO_USER/.config/Signal
rm -r /root/docker/signal $INSTALL_PREFIX/signal
docker rmi signal
