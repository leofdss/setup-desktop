#!/usr/bin/env bash

set -e # strict mode

echo 'uninstall xone'

# uninstall ##################
cd $HOME/xone
sudo ./uninstall.sh
#############################

# exit ######################
echo 'xone uninstalled'
exit 0
#############################
