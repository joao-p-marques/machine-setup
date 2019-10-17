#!/bin/bash

# basic install
sudo apt install vim git touch tree python python3 java-1.8.0-openjdk java-1.8.0-openjdk-devel wget curl 

# docker
sudo apt install -y apt-utils \
  device-mapper-persistent-data \
  lvm2

sudo apt-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo apt install docker-ce docker-ce-cli containerd.io

# neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm install.sh

# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
# set as default shell
chsh -s 'which fish'
