#!/usr/bin/env bash

set -e # strict mode

echo 'install flatpak'

# install ###################
for check in 'flatpak' 'gnome-software'; do
	if ! which "$check" &>/dev/null; then
		if which dnf &>/dev/null; then
			sudo dnf install "$check" -y
		fi
		if which apt &>/dev/null; then
			sudo apt update
			sudo apt install "$check" -y
		fi
		if ! which $check &>/dev/null; then
			echo "install $check error!!!"
			exit 1
		fi
	fi
done
#############################

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# exit ######################
echo 'flatpak instaled'
echo 'Restart system required!!!'
exit 0
#############################
