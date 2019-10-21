#!/bin/bash

# basic install
sudo apt install vim git touch tree python python3 java-1.8.0-openjdk java-1.8.0-openjdk-devel wget curl pip 

# docker
sudo apt-get purge docker lxc-docker docker-engine docker.io
sudo apt-get install  curl  apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

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

# tmux
sudo apt install tmux

# install pipenv
pip install --user pipenv

# install python3.7
sudo apt install python3.7

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2

sudo update-alternatives --config python3 # select 2
