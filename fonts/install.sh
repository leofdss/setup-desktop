#!/usr/bin/env bash

set -e # strict mode

echo 'install fonts'

# read #####################
declare -a A=("$@")
[[ -p /dev/stdin ]] && {
    mapfile -t -O ${#A[@]} A
    set -- "${A[@]}"
}

json="$@"
#############################

# install ##################
echo $json | jq -r '.zip[].name' | while read name; do
    link=$(echo $json | jq -r ".zip[] | select(.name == \"${name}\") | {link} | join(\"\")")
    file="${name}.zip"
    folder="${HOME}/.local/share/fonts/${name}"

    wget -O $file $link
    mkdir -p $folder
    unzip -o $file -d $folder
    rm $file
done
#############################

# exit ######################
echo 'fonts instaled'
exit 0
#############################
