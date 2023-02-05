#!/usr/bin/env bash

set -e # strict mode

echo 'install snap'

# install ###################
if which dnf &>/dev/null; then
    sudo dnf install snapd -y
    sudo ln -s /var/lib/snapd/snap /snap
fi
if which apt &>/dev/null; then
    sudo apt updade
    sudo apt install snapd -y
fi
#############################

# check #####################
if ! which snap &>/dev/null; then
    echo 'install snap error!!!'
    exit 1
fi
#############################

# exit ######################
echo 'snap instaled'
exit 0
#############################
