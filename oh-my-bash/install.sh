#!/usr/bin/env bash

set -e # strict mode

echo 'config Oh My BASH!'

git clone https://github.com/sys-t-ma/bash-tabcolored $HOME/.oh-my-bash/custom/plugins/tabcolored
git clone https://github.com/sys-t-ma/bash-getip $HOME/.oh-my-bash/custom/plugins/getip
git clone https://github.com/leofdss/vscode-plus-bash-theme.git $HOME/.oh-my-bash/custom/themes/vscode-plus

sed -i 's/OSH_THEME="font"/OSH_THEME="vscode-plus"/' ~/.bashrc
sed -i 's/plugins=(/plugins=(tabcolored getip /' ~/.bashrc
