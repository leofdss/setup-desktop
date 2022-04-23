set -e # strict mode

echo 'install toolbox'

# install ######################

if ! which toolbox &>/dev/null; then
    if which dnf &>/dev/null; then
        sudo dnf install toolbox -y &>/dev/null
    fi
    if which apt &>/dev/null; then
        sudo apt update
        sudo apt install podman-toolbox -y &>/dev/null
    fi
    if ! which toolbox &>/dev/null; then
        echo "install podman-toolbox error!!!"
        exit 1
    fi
fi

#############################

# exit ######################
echo 'toolbox instaled'
exit 0
#############################
