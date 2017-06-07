#!/bin/bash

create_user() {
    groupadd remote
    useradd -d /home/$1 -G remote -m $1 -p $2
}

add_credential() {
    mkdir -p /home/$1/.ssh/

    if [ -n "${PRIVATE_KEY_NAME}" ]; then
        PUB_KEY="$PRIVATE_KEY_NAME.pub"

        cp /tmp/$PRIVATE_KEY_NAME /home/$1/.ssh/id_rsa
        cp /tmp/$PUB_KEY /home/$1/.ssh/id_rsa.pub
    fi
}

mkdir /var/run/sshd

create_user $ADMIN $ADMIN_PASS
add_credential $ADMIN 

echo 'Start deamon'
/usr/sbin/sshd -D
