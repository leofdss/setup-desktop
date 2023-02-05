#!/usr/bin/env bash

set -e # strict mode

echo 'install xone'

# install ##################
if [ -x "$(command -v dnf)" ]; then
    sudo dnf install -y dkms
    sudo dnf install -y curl
    sudo dnf install -y cabextract
    sudo dnf install -y git
fi
if [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt install -y dkms
    sudo apt install -y curl
    sudo apt install -y cabextract
    sudo apt install -y git
fi

git clone https://github.com/medusalix/xone $HOME/xone
cd $HOME/xone
sudo ./install.sh --release
sudo xone-get-firmware.sh
#############################

# exit ######################
echo 'xone instaled'
exit 0
#############################
