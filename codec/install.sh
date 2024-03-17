#!/usr/bin/env bash

set -e # strict mode

echo 'install codec'

# install ###################
sudo apt update
sudo apt install ubuntu-restricted-extras -y
sudo apt install libavcodec-extra ffmpeg -y
#############################

# exit ######################
echo 'codec instaled'
exit 0
#####
