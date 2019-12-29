#!/bin/sh

#Atulizando repositórios
sudo apt update

#Instalando programas via APT
sudo apt install flameshot audacity w3m supertux cmatrix dreamchess frei0r-plugins git htop i3 i3blocks i3status neofetch nodejs ranger snapd ssh tmux vim zsh aptitude python-pip python3-pip suckless-tools chromium-codecs-ffmpeg-extra zathura lamp-server sxiv traceroute sl guake build-essential

#Instalando Photogimp via Snap
sudo snap install photogimp

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

#Instalando Opera Browser
cd ~/Downloads
wget  https://download3.operacdn.com/pub/opera/desktop/65.0.3467.69/linux/opera-stable_65.0.3467.69_amd64.deb
sudo dpkg -i opera-stable_65.0.3467.69_amd64.deb
cd ~
