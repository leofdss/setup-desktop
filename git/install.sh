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
[init]
    defaultBranch = main

[diff]
    tool = vscode

[difftool "vscode"]
    cmd = code --wait --diff $LOCAL $REMOTE

[alias]
    graph = log --oneline --all --graph
    adog = log --all --decorate --oneline --graph
    codediff = difftool -y
    filediff = diff --name-only
    filesig = log --pretty=format:'%h - %an, %ar : %s'

[core]
    editor = code --wait
    pager = less -FRX

[user]
    email = ${EMAIL}
    name = ${NAME}

[init]
    defaultBranch = main

[credential]
    helper = cache --timeout=2505600
DONE

# exit ######################
echo 'git instaled'
exit 0
#############################
