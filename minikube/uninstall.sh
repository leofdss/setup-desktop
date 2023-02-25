#!/usr/bin/env bash

set -e # strict mode

echo 'uninstall minikube'

# uninstall ##################
minikube stop
minikube delete
docker stop $(docker ps -aq)
rm -r ~/.kube ~/.minikube

sudo rm /usr/local/bin/minikube
#############################

# exit ######################
echo 'minikube uninstalled'
exit 0
#############################
