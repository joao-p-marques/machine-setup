#!/bin/bash

sudo apt install -y software-properties-gtk flatpak snapd 

sudo snap install snap-store
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt install gnome-software-plugin-flatpak

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian eonic contrib"

sudo apt update && sudo apt install virtualbox-6.0

pip3 install --user ansible
