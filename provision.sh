#!/bin/bash

apt-get -y update
apt-get -y install aptitude
aptitude -y update
aptitude -y dist-upgrade

aptitude -y install sudo tmux htop cmake g++ python-dev build-essential clang \
    vim-nox python-pip zsh git

adduser mihnea
visudo
su - mihnea
cd

mkdir localCode
cd $_
git clone https://github.com/mihneadb/configs.git
cd configs
./setup.py

sudo locale-gen ro_RO.UTF-8
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

zsh -c 'upvim'

