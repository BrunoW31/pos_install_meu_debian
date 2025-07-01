#!/bin/env bash

########################################
#  Name: Bruno Simonato                #
#  date: 30/06/2025                    #
#  program: Pós instalação do debian  #
########################################

#distro = /etc/os-release | grep "PRETTY_NAME" | cut -d "\"" -f 2
sudo apt update -y && sudo apt upgrade -y

# instalar google chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

# instalar burpsuite
wget https://portswigger.net/burp/releases/download?product=pro&version=2025.5.6&type=Linux
cd ~/Downloads
chmod +x burpsuite_pro_linux_v2025_5_6.sh
./burpsuite_pro_linux_v2025_5_6.sh

# meus programas 
sudo apt install vlc obs-studio ffmpeg mpv guvcview fastfetch htop git curl 7zip tor proxychains openvpn adb gimp inkscape libreoffice golang python3 hashcat keepassxc thunderbird make gcc python3-pip pipx -y;
sudo apt install flatpak -y;
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# instalar docker
sudo apt install docker docker-compose docker.io

# instalar kvm
sudo apt install qemu-system libvirt-daemon-system virt-manager

# instalar servidor web + mysql
sudo apt install apache2 mariadb-server php phpmyadmin

# ferramentas de testes de rede
sudo apt install sqlmap nmap netdiscover hydra john hashcat aircrack-ng wifite gobuster dirb ffuf kleopatra 







