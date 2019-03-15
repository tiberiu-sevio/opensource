#!/bin/bash

echo "UUIIIIIIIIII2"
sudo -S <<< "app" touch /var/log/system-bootstrap.log
sudo -S <<< "app" chmod 777 /var/log/system-bootstrap.log


sudo -S <<< "app" apt-get update >> /var/log/system-bootstrap.log


SELINUXSTATUS=$(getenforce)

if [ "$SELINUXSTATUS" == "Permissive" ]; then
    sudo -S <<< "app" setenforce 0 >> /var/log/system-bootstrap.log
fi;

sudo -S <<< "app" apt-get -y install php >> /var/log/system-bootstrap.log
sudo -S <<< "app" mkdir ~/.ssh
sudo -S <<< "app" touch ~/.ssh/authorized_keys
sudo -S <<< "app" chmod 777 ~/.ssh/authorized_keys
sudo -S <<< "app" echo "O_CHEIE_PUBLICA" > ~/.ssh/authorized_keys