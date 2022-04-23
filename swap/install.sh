#!/usr/bin/env bash

set -e # strict mode

echo 'install swap'

size="$1^^"

# Create ####################
sudo fallocate -l "$size" /swap.img
ls -lh /swap.img
#############################

# Activate ##################
sudo chmod 600 /swap.img
sudo mkswap /swap.img
sudo swapon /swap.img
sudo swapon --show
#############################

# Mounting ##################
echo '/swap.img none swap sw 0 0' | sudo tee -a /etc/fstab
#############################

# exit ######################
echo 'swap instaled'
exit 0
#############################
