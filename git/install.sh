#!/usr/bin/env bash

set -e # strict mode

echo 'install git'

# install ###################
if which dnf &>/dev/null; then
    sudo dnf install git -y
fi
if which apt &>/dev/null; then
    sudo apt update
    sudo apt install git -y
fi
#############################

# check #####################
if ! which git &>/dev/null; then
    echo 'install git error!!!'
    exit 1
fi
#############################

# get opts ###################
while getopts ":e:n:" options; do
    case "${options}" in
    e)
        EMAIL=${OPTARG}
        ;;
    n)
        NAME=${OPTARG}
        ;;
    esac
done
#############################

# setup #####################
cat <<DONE >$HOME/.gitconfig
[alias]
    graph = log --oneline --all --graph
    adog = log --all --decorate --oneline --graph
 
[core]
    editor = code --wait
    pager = less -FRX

[credential]
    helper = cache --timeout=2505600

[user]
    email = ${EMAIL}
    name = ${NAME}

[init]
    defaultBranch = main
DONE

# exit ######################
echo 'git instaled'
exit 0
#############################
