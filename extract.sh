#!/bin/sh

if [ `id -u` != 0 ]; then
  exec sudo `realpath $0` "$@"
fi

CONTAINERID=$(docker ps | grep signal | cut -d' ' -f1)

docker cp $CONTAINERID:/home/user/.config/Signal config/
chown -R $SUDO_UID:$SUDO_GID config/
