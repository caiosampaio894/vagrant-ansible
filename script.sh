#!/bin/bash

apt update
VBoxManage createvm --name "vagrant-ansible" --ostype "Debian_64"
sudo usermod -a -G vboxusers $CAIO
apt install -y nginx
service nginx restart
apt install -y vim-gtk3 exuberant-ctags curl telnet unzip wget net-tools htop nmap

