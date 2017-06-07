#!/bin/bash

groupadd remote
useradd -d /home/$ADMIN -G remote -m $ADMIN
passwd -d $ADMIN

service xinetd start
tail -f /dev/null
