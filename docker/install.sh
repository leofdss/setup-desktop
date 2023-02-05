#!/usr/bin/env bash

set -e # strict mode

echo 'install docker'

# install ###################
if which dnf &>/dev/null; then
    sudo dnf remove -y docker \
        docker-client \
        docker-client-latest \
        docker-common \
        docker-latest \
        docker-latest-logrotate \
        docker-logrotate \
        docker-selinux \
        docker-engine-selinux \
        docker-engine
    sudo dnf -y install dnf-plugins-core
    sudo dnf config-manager \
        --add-repo \
        https://download.docker.com/linux/fedora/docker-ce.repo
    sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
    sudo dnf install -y docker-compose
fi
if which apt &>/dev/null; then
    sudo apt update
    sudo apt install docker.io -y
    sudo apt install docker-compose -y
fi
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
