#!/bin/sh

sudo pacman -Syu

#Installing programs using APT
sudo pacman -S ffmpeg automake autoconf gparted xorg zsh curl audacity w3m supertux cmatrix frei0r-plugins git htop neofetch ranger snapd ssh tmux vim zathura sxiv traceroute sl guake build-essential g++ gcc make postgresql fonts-firacode supertux  ack xclip flameshot neovim pavucontrol composer bat rofi lxappearance feh compton polybar php



# Installing my Nvim config

mkdir ~/.config/nvim
git clone https://github.com/edersonferreira/nvim-cfg ~/.config/nvim

# Installing ASDF

git clone https://aur.archlinux.org/asdf-vm.git
cd asdf-vm
sudo makepkg -si

# Installing languages with ASDF

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install ruby 2.7.1
asdf global ruby 2.7.1

asdf install nodejs 14.4.0
asdf global nodejs 14.4.0

#Installing gems
gem install colorls betterfile colorize runcs gcli generategem solargraph

#Instalando programs with snap
#sudo snap install photogimp opera

#Installing VSCode using Snap
#sudo snap install code --classic

#Installing OBS Studio
# sudo add-apt-repository ppa:obsproject/obs-studio
# sudo apt-get update && sudo apt-get install obs-studio

#Installing Kdenlive
mkdir ~/software
cd ~/software 
wget https://files.kde.org/kdenlive/release/kdenlive-20.04.0-x86_64.appimage
chmod +x kdenlive-20.04.0-x86_64.appimage
mv kdenlive-20.04.0-x86_64.appimage kdenlive20.04.appimage
cd ~

#Installing programs using NPM
sudo npm install expo prettier typescript markpdf @prettier/plugin-php intelephense esling eslint-plugin-vue -g

#Installing Powerline10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#Apt upgrade
sudo apt upgrade -y ; sudo apt dist-upgrade -y

#Removing DEBS
rm -rf ~/Downloads/*

#Installing Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
