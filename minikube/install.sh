#!/usr/bin/env bash

set -e # strict mode

echo 'install minikube'

# install ###################
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64
sudo ln -s $(which minikube) /usr/local/bin/kubectl
#############################

# check #####################
if ! [ -x "$(command -v minikube)" ]; then
    echo 'install minikube error!!!'
    exit 1
fi
if ! [ -x "$(command -v kubectl)" ]; then
    echo 'install minikube error!!!'
    exit 1
fi
#############################

# exit ######################
echo 'minikube instaled'
exit 0
#############################
