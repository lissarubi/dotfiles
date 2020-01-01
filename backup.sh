#!/bin/sh

#Atulizando repositórios
sudo apt update -y

#Removendo travas do APT
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#Instalando programas via APT
sudo apt install zsh npm flameshot audacity w3m supertux cmatrix dreamchess frei0r-plugins git htop i3 i3blocks i3status neofetch nodejs ranger snapd ssh tmux vim zsh aptitude python-pip python3-pip suckless-tools chromium-codecs-ffmpeg-extra zathura lamp-server^ sxiv traceroute sl guake build-essential

#Instalando programas via Snap
sudo snap install photogimp opera

#Instalando Visual Studio Code via Snap
sudo snap install code --classic

#Instalando Vivaldi Browser
cd ~/Downloads
wget https://downloads.vivaldi.com/stable/vivaldi-stable_2.10.1745.21-1_amd64.deb
sudo dpkg -i vivaldi-stable_2.10.1745.21-1_amd64.deb
cd ~

#Instalando Kdenlive
mkdir ~/software
cd ~/software 
wget https://files.kde.org/kdenlive/release/kdenlive-19.12.0a-x86_64.appimage
chmod +x kdenlive-19.12.0a-x86_64.appimage
mv kdenlive-19.12.0a-x86_64.appimage kdenlive19.12.appimage
cd ~

#Instalando o Bat
cd ~/Downloads
wget https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb
sudo dpkg -i bat_0.12.1_amd64.deb
cd ~

#Atulizando o sistema
sudo apt upgrade

#Removendo DEBS
rm -rf ~/Downloads/*

#Reiniciando o sistema
reboot
