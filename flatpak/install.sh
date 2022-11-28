#!/usr/bin/env bash

set -e # strict mode

echo 'install flatpak'

# install ###################
if which dnf &>/dev/null; then
	sudo dnf install flatpak -y
fi
if which apt &>/dev/null; then
	sudo apt update
	sudo apt install flatpak -y
fi
#############################

# check #####################
if ! which flatpak &>/dev/null; then
	echo 'install flatpak error!!!'
	exit 1
fi
#############################

# config ####################
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#############################

# exit ######################
echo 'flatpak instaled'
echo 'Restart system required!!!'
exit 0
#############################
