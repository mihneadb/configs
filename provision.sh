#!/bin/bash

echo "Make sure to create user before and run it as that user."
sleep 5

sudo apt-get -y update
sudo apt-get -y install aptitude
sudo aptitude -y update
sudo aptitude -y dist-upgrade

sudo aptitude -y install sudo tmux htop cmake g++ python-dev build-essential clang \
    vim-nox python-pip zsh git

mkdir localCode
cd localCode
git clone https://github.com/mihneadb/configs.git
cd configs
./setup.py --noinput

sudo locale-gen ro_RO.UTF-8
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

zsh -c 'vim -u ~/.bundles.vim +BundleInstall! +q'
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker mihnea

