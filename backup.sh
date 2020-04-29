#!/bin/sh

#Atulizando repositórios
sudo apt update -y

#Removendo travas do APT
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#Instalando programas via APT
sudo apt install -y automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev zlib1g-dev sqlite3 libsqlite3-dev gparted xorg zsh curl audacity w3m supertux cmatrix dreamchess frei0r-plugins git htop neofetch ranger snapd ssh tmux vim zsh aptitude python-pip python3-pip suckless-tools chromium-codecs-ffmpeg-extra zathura sxiv traceroute sl guake build-essential g++ gcc make postgresql postgresql-contrib fonts-firacode

# Instalando ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

# Instalando linguagens com ASDF
asdf install ruby 2.7.1
asdf install nodejs 14.0.0

asdf global ruby 2.7.1
asdf global nodejs 14.0.0

#Instalando programas via Snap
sudo snap install photogimp opera

#Instalando Visual Studio Code via Snap
sudo snap install code --classic

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
sudo apt-get install -y nodejs

#Instalando programas via NPM
sudo npm install expo prettier typescript -g

#Instalando Powerlevel 10K theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#Atulizando o sistema
sudo apt upgrade -y ; sudo apt dist-upgrade -y

#Removendo DEBS
rm -rf ~/Downloads/*

#Instalando Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
