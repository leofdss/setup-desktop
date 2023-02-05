#!/usr/bin/env bash

set -e # strict mode

echo 'install cockpit'

# install ###################
if [ -x "$(command -v dnf)" ]; then
    sudo dnf install cockpit
    sudo systemctl enable --now cockpit.socket
fi
if [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt install -t ${UBUNTU_CODENAME}-backports cockpit
fi
#############################

# exit ######################
echo 'cockpit instaled'
exit 0
#############################
