#!/usr/bin/env bash

set -e # strict mode

echo 'install k3s'

# install ###################
if [ -x "$(command -v dnf)" ]; then
    sudo dnf install -y curl
fi
if [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt install -y curl
fi

curl -sfL https://get.k3s.io | sh -s - --docker
#############################

# check #####################
if ! [ -x "$(command -v k3s)" ]; then
    echo 'install k3s error!!!'
    exit 1
fi
if ! [ -x "$(command -v kubectl)" ]; then
    echo 'install k3s error!!!'
    exit 1
fi
#############################

# config ####################
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
#############################

# exit ######################
echo 'k3s instaled'
exit 0
#############################
