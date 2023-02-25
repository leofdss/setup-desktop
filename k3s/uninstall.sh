#!/usr/bin/env bash

set -e # strict mode

echo 'uninstall k3s'

# uninstall ##################
/usr/local/bin/k3s-uninstall.sh
#############################

# exit ######################
echo 'k3s uninstalled'
exit 0
#############################
