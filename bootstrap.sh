#!/bin/bash

echo "UUIIIIIIIIII"
sudo -S <<< "app" touch /var/log/system-bootstrap.log

sudo -S <<< "app" apt-get update >> /var/log/system-bootstrap.log


SELINUXSTATUS=$(getenforce)

if [ "$SELINUXSTATUS" == "Permissive" ]; then
    sudo -S <<< "app" setenforce 0 >> /var/log/system-bootstrap.log
fi;