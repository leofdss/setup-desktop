#!/bin/sh

echo $USER >/home/leo/user.txt

# Install language packs for PT
apt install -y $(check-language-support -l pt_BR)
