#!/usr/bin/env bash

set -e # strict mode

echo 'install git'

# install ###################
if ! which git &> /dev/null; then
	if which dnf &> /dev/null; then
		sudo dnf install git -y
	fi
	if which apt &> /dev/null; then
		sudo apt updade
		sudo apt install git -y
	fi
	if ! which git &> /dev/null; then
		echo 'install git error!!!'
		exit 1
	fi
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
cat <<DONE > $HOME/.gitconfig
[color]
  ui = auto
 
[alias]
  lg = log --pretty=format:'%Cgreen%h %Cblue%ad %Cred%cn %Creset%s' --date=short
  ll = log --pretty=format:\"%C(yellow)%h%Cred%d\\\\ %Creset%s%Cblue\\\\ [%cn]\" --decorate --numstat
  ffc = diff-tree --no-commit-id --name-only -r
 
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
