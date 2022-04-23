#!/usr/bin/env bash

set -e # strict mode

echo 'install docker'

# install ###################
if ! which docker &>/dev/null; then

    curl -fsSL https://get.docker.com | bash

    if ! which docker &>/dev/null; then
        echo "install docker error!!!"
        exit 1
    fi
fi

if ! which docker-compose &>/dev/null; then
    if which dnf &>/dev/null; then
        sudo dnf install docker-compose -y
    fi
    if which apt &>/dev/null; then
        sudo apt update
        sudo apt install docker-compose -y
    fi
    if ! which docker-compose &>/dev/null; then
        echo "install docker-compose error!!!"
        exit 1
    fi
fi
#############################

# config ####################
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
#############################

# exit ######################
echo 'docker instaled'
echo 'Restart system required!!!'
exit 0
#############################
