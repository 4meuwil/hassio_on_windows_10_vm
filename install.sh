#!/bin/bash

# Get the IP address
export IP="$(hostname -I | sed -e 's/[[:space:]]*$//')"

echo -e "####################\nYour IP address is: \n# $IP\n####################"

sudo -i

add-apt-repository universe

apt-get update

apt-get install -y apparmor-utils apt-transport-https avahi-daemon ca-certificates curl dbus jq network-manager socat software-properties-common

curl -sSL https://get.docker.com | sh

curl -sL "https://raw.githubusercontent.com/home-assistant/hassio-installer/master/hassio_install.sh" | bash -s

echo -e "\nSuccess! go to\n\nhttp://$IP:8123\n"
