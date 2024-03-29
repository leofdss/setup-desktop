#!/usr/bin/env bash

set -e # strict mode

echo 'install docker'

# install ###################
sudo apt update
sudo apt install docker.io -y
sudo apt install docker-compose -y
#############################

# check #####################
if ! which docker &>/dev/null; then
    echo 'install docker error!!!'
    exit 1
fi
if ! which docker-compose &>/dev/null; then
    echo 'install docker-compose error!!!'
    exit 1
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
