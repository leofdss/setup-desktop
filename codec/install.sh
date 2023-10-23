#!/usr/bin/env bash

set -e # strict mode

echo 'install codec'

# install ###################
if [ -x "$(command -v dnf)" ]; then
    sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
    sudo dnf groupupdate sound-and-video
fi
if [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt install ubuntu-restricted-extras -y
    sudo apt install libavcodec-extra ffmpeg -y
fi
#############################

# exit ######################
echo 'codec instaled'
exit 0
#####
