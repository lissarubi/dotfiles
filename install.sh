#!/bin/sh

sudo apt update -y

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#Installing programs using APT
sudo apt install -y ffmpeg automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev zlib1g-dev sqlite3 libsqlite3-dev gparted xorg zsh curl audacity w3m supertux cmatrix dreamchess frei0r-plugins git htop neofetch ranger snapd ssh tmux vim zsh aptitude suckless-tools chromium-codecs-ffmpeg-extra zathura sxiv traceroute sl guake build-essential g++ gcc make postgresql postgresql-contrib libpq-dev fonts-firacode supertux  ack breeze xclip flameshot neovim pavucontrol


# Installing my Nvim config

mkdir ~/.config/nvim
git clone https://github.com/edersonferreira/nvim-cfg ~/.config/nvim

# Installing ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

# Installing languages with ASDF

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install ruby 2.7.1
asdf install nodejs 14.4.0

asdf global ruby 2.7.1
asdf global nodejs 14.4.0

#Installing gems
gem install colorls betterfile colorize runcs gcli generategem solargraph

#Instalando programs with snap
sudo snap install photogimp opera

#Installing VSCode using Snap
sudo snap install code --classic

#Installing OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update && sudo apt-get install obs-studio

#Installing Kdenlive
mkdir ~/software
cd ~/software 
wget https://files.kde.org/kdenlive/release/kdenlive-20.04.0-x86_64.appimage
chmod +x kdenlive-20.04.0-x86_64.appimage
mv kdenlive-20.04.0-x86_64.appimage kdenlive20.04.appimage
cd ~

#Installing Bat
cd ~/Downloads
wget https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb
sudo dpkg -i bat_0.12.1_amd64.deb
cd ~

#Installing programs using NPM
sudo npm install expo prettier typescript markpdf @prettier/plugin-php intelephense -g

#Installing Powerline10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#Apt upgrade
sudo apt upgrade -y ; sudo apt dist-upgrade -y

#Removing DEBS
rm -rf ~/Downloads/*

#Installing Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
