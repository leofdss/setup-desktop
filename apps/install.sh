#!/usr/bin/env bash

set -e # strict mode

declare -a A=("$@")
[[ -p /dev/stdin ]] && { mapfile -t -O ${#A[@]} A; set -- "${A[@]}"; }

echo "$@" | jq -r '.flatpak.flathub[]' | while read object; do
  flatpak install --user flathub $object -y --noninteractive
done
