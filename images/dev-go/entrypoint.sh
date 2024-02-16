#!/bin/bash

#
# Fix docker permissions
#

DOCKER_SOCKET=/var/run/docker.sock
DOCKER_GROUP=docker
USER=$(whoami)

# setup docker group based on hosts mount gid
if [ -S ${DOCKER_SOCKET} ]; then
    OLD_GID=$(getent group "${DOCKER_GROUP}" | cut -f3 -d:)
    NEW_GID=$(stat -c "%g" "$DOCKER_SOCKET")
    if [ "$OLD_GID" != "$NEW_GID" ]; then
    	echo "Changing GID of $DOCKER_GROUP from $OLD_GID to $NEW_GID"
    	sudo groupmod -g "$NEW_GID" -o "$DOCKER_GROUP"
    	sudo find / -xdev -group "$OLD_GID" -exec sudo chgrp -h "$DOCKER_GROUP" {} \;
    fi
	sudo usermod -aG ${DOCKER_GROUP} ${USER}
fi

#
# Hand of to CMD
#

exec "$@"
