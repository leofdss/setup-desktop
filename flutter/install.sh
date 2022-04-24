#!/usr/bin/env bash

set -e # strict mode

echo 'install flutter'

# dependencies ##############
for check in 'file' 'clang' 'curl' 'git' 'unzip' 'zip' 'xz' 'cmake' 'grep'; do
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

for package in 'ninja-build' 'pkg-config'; do
    if which dnf &>/dev/null; then
        instaled=$(dnf list $package | grep "$package") 
        if ! [ -n "$instaled" ]; then
            sudo dnf install $package -y 
        fi
        instaled=$(dnf list $package | grep "$package")
        if ! [ -n "$instaled" ]; then
            echo "install $package error!!!"
			exit 1
        fi
    fi
    if which apt &>/dev/null; then
        instaled=$(apt list $package | grep "$package") 
        if ! [ -n "$instaled" ]; then
            sudo apt update
            sudo apt install $package -y 
        fi
        instaled=$(apt list $package | grep "$package")
        if ! [ -n "$instaled" ]; then
            echo "install $package error!!!"
			exit 1
        fi
    fi
done

if which dnf &>/dev/null; then
    instaled=$(dnf list gtk3-devel | grep "gtk3-devel") 
    if ! [ -n "$instaled" ]; then
        sudo dnf install gtk3-devel -y 
    fi
    instaled=$(dnf list gtk3-devel | grep "gtk3-devel")
    if ! [ -n "$instaled" ]; then
        echo "install gtk3-devel error!!!"
        exit 1
    fi
fi
if which apt &>/dev/null; then
    instaled=$(apt list libgtk-3-dev | grep "libgtk-3-dev")
    if ! [ -n "$instaled" ]; then
        sudo apt update
        sudo apt install libgtk-3-dev -y 
    fi
    instaled=$(apt list libgtk-3-dev | grep "libgtk-3-dev")
    if ! [ -n "$instaled" ]; then
        echo "install libgtk-3-dev error!!!"
        exit 1
    fi
fi

bash <(curl -s https://raw.githubusercontent.com/leofdss/setup-desktop/main/snap/install.sh)

# #############################

# install ###################
if ! which flutter &>/dev/null; then
    sudo snap install flutter --classic
    flutter precache
fi
if ! which flutter &>/dev/null; then
    echo "install flutter error!!!"
    exit 1
fi
# #############################

# # exit ######################
echo 'flutter instaled'
exit 0
# #############################
