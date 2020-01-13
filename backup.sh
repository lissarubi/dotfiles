#!/bin/sh

#Atulizando repositórios
sudo apt update -y

#Removendo travas do APT
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#Instalando programas via APT
sudo apt install -y supertux xorg mysql-workbench zsh curl flameshot audacity w3m supertux cmatrix dreamchess frei0r-plugins git htop i3 i3blocks i3status neofetch nodejs ranger snapd ssh tmux vim zsh aptitude python-pip python3-pip suckless-tools chromium-codecs-ffmpeg-extra zathura lamp-server^ sxiv traceroute sl guake build-essential g++ gcc make

#Instalando programas via Snap
sudo snap install photogimp opera

#Instalando Visual Studio Code via Snap
sudo snap install code --classic

#Colocando SNAP no /etc/environment

echo /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin >> environment

sudo rm /etc/environment

sudo mv environment /etc

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

#Instalando o Nodejs
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt install -y nodejs

#Instalando Powerlevel 10K theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#Atulizando o sistema
sudo apt upgrade -y ; sudo apt dist-upgrade -y

#Removendo DEBS
rm -rf ~/Downloads/*

#Instalando Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
