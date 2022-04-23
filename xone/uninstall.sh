#!/usr/bin/env bash

set -e # strict mode

# unistall ###################
original_folder="$(pwd)"
cd $HOME/xone
./uninstall.sh
cd $original_folder
#############################

# exit ######################
echo 'xone unistaled'
exit 0
#############################