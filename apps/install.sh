#!/usr/bin/env bash

set -e # strict mode

if [ -x "$(command -v dnf)" ]; then
    sudo dnf install -y jq
fi
if [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt install -y jq
fi

declare -a A=("$@")
[[ -p /dev/stdin ]] && {
    mapfile -t -O ${#A[@]} A
    set -- "${A[@]}"
}

if [ -x "$(command -v flatpak)" ]; then
    echo "$@" | jq -r '.flatpak.flathub[]' | while read object; do
        flatpak install --user flathub $object -y --noninteractive
    done
fi

if [ -x "$(command -v apt)" ]; then
    echo "$@" | jq -r '.package_manager.apt[]' | while read object; do
        sudo apt install $object -y
    done
fi

if [ -x "$(command -v dnf)" ]; then
    echo "$@" | jq -r '.package_manager.dnf[]' | while read object; do
        sudo dnf install $object -y
    done
fi
