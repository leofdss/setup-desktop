#!/usr/bin/env bash

set -e # strict mode

echo 'install xone'
# dependencies ##############
for check in 'git' 'dkms' 'curl' 'cabextract'; do
	if ! which "$check" &>/dev/null; then
		if which dnf &>/dev/null; then
			sudo dnf update
			sudo dnf install "$check" -y &>/dev/null
		fi
		if which apt &>/dev/null; then
			sudo apt update
			sudo apt install "$check" -y &>/dev/null
		fi
		if ! which $check &>/dev/null; then
			echo "install $check error!!!"
			exit 1
		fi
	fi
done
#############################

# install ###################
original_folder="$(pwd)"
git clone https://github.com/medusalix/xone $HOME/xone
cd $HOME/xone

sudo ./install.sh --release
sudo xone-get-firmware.sh

cd $original_folder
#############################

# exit ######################
echo 'xone instaled'
exit 0
#############################
