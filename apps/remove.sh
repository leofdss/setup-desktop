#!/usr/bin/env bash

set -e # strict mode

declare -a A=("$@")
[[ -p /dev/stdin ]] && {
    mapfile -t -O ${#A[@]} A
    set -- "${A[@]}"
}

if [ -x "$(command -v flatpak)" ]; then
    echo "$@" | jq -r '.flatpak.flathub[]' | while read object; do
        flatpak remove $object -y --noninteractive
    done

    flatpak uninstall --unused -y --noninteractive
fi

if [ -x "$(command -v apt)" ]; then
    echo "$@" | jq -r '.package_manager.apt[]' | while read object; do
        sudo apt remove $object -y
    done
fi

if [ -x "$(command -v dnf)" ]; then
    echo "$@" | jq -r '.package_manager.dnf[]' | while read object; do
        sudo dnf remove $object -y
    done
fi
