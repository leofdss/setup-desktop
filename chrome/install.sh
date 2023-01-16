#!/usr/bin/env bash

set -e # strict mode

echo 'install chrome'

# install ###################
if [ -x "$(command -v dnf)" ]; then
    sudo dnf install -y liberation-fonts
    sudo dnf install -y libXdamage
    sudo dnf install -y alsa-lib-devel
    sudo dnf install -y at-spi2-core
    sudo dnf install -y mesa-libgbm
    sudo dnf install -y libxkbcommon
    sudo dnf install -y xdg-utils
    sudo dnf install -y atk
    sudo dnf install -y at-spi2-atk
    sudo dnf install -y gtk3
    sudo rpm -ivh https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
fi
if [ -x "$(command -v apt)" ]; then
    sudo apt update
	sudo apt install -y fonts-liberation
    sudo apt install -y libasound2
    sudo apt install -y libatk-bridge2.0-0
    sudo apt install -y libatk1.0-0
    sudo apt install -y libatspi2.0-0
    sudo apt install -y libgtk-3-0
    sudo apt install -y libgtk-4-1
    sudo apt install -y libnspr4
    sudo apt install -y libnss3
    sudo apt install -y libu2f-udev
    sudo apt install -y libxcomposite1
    sudo apt install -y libxdamage1
    sudo apt install -y libxkbcommon0
    sudo apt install -y libxrandr2
    sudo apt install -y xdg-utils
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt --fix-broken install -y
    rm google-chrome-stable_current_amd64.deb
fi
#############################

# check #####################
if ! which google-chrome-stable &>/dev/null; then
	echo 'install chrome error!!!'
	exit 1
fi
#############################

# exit ######################
echo 'chrome instaled'
exit 0
#############################
