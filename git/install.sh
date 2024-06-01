#!/usr/bin/env bash

set -e # strict mode

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
    useHttpPath = true
    helper = cache --timeout=2505600
DONE

# exit ######################
echo 'git instaled'
exit 0
#############################
