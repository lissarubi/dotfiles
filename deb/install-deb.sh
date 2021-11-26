#!/bin/sh

sudo apt update -y

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#Installing programs using APT
sudo apt install -y ffmpeg ack aptitude audacity autoconf automake bat breeze build-essential chromium-codecs-ffmpeg-extra cmatrix code composer compton curl dreamchess dunst feh flameshot fonts-firacode frei0r-plugins g++ gcc gimp git gparted guake htop libcairo2-dev libffi-dev libjpeg-dev libncurses-dev libonig-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libtool libxslt-dev libyaml-dev libzip-dev lxappearance lxsession make neofetch neovim nodejs pavucontrol pavucontrol php polybar postgresql postgresql-contrib ranger re2c ruby sl snapd sqlite3 ssh suckless-tools supertux supertux  sxiv tmux traceroute unixodbc-dev vim w3m xclip xorg xsettingsd zathura zlib1g-dev zsh zsh

# Installing my Nvim config

mkdir ~/.config/nvim
git clone https://github.com/edersonferreira/nvim-cfg ~/.config/nvim

#Installing gems
gem install colorls betterfile colorize runcs gcli generategem solargraph

#Installing OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update && sudo apt-get install -y obs-studio

#Installing programs using NPM
sudo npm install prettier markpdf @prettier/plugin-php intelephense eslint eslint-plugin-vue -g

#Installing Powerline10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#Apt upgrade
sudo apt upgrade -y ; sudo apt dist-upgrade -y

#Removing DEBS
rm -rf ~/Downloads/*

#Installing Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
