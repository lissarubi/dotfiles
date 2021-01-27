#!/bin/sh

sudo pacman -Syu

#Installing programs using APT
sudo pacman -S ffmpeg automake autoconf gparted xorg zsh curl audacity w3m supertux cmatrix frei0r-plugins git htop neofetch ranger snapd openssh tmux vim zathura sxiv traceroute sl guake base-devel gcc make postgresql ttf-fira-code supertux  ack xclip flameshot neovim pavucontrol composer bat rofi lxappearance feh compton polybar php obs-studio flameshot ruby nodejs dmenu go noto-fonts-emoji alacritty feh rofi sway swaylock compton ttf-droid ttf-dejavu ttf-ubuntu-font-family

# Installing my Nvim config

mkdir ~/.config/nvim
git clone https://github.com/edersonferreira/nvim-cfg ~/.config/nvim

#Installing gems
gem install colorls betterfile colorize runcs gcli generategem solargraph

#Installing Snap

git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

#Installing programs with Snap
sudo snap install photogimp opera

#Installing VSCode using Snap
sudo snap install code --classic

#Installing Kdenlive
mkdir ~/software
cd ~/software 
wget https://files.kde.org/kdenlive/release/kdenlive-20.04.0-x86_64.appimage
chmod +x kdenlive-20.04.0-x86_64.appimage
mv kdenlive-20.04.0-x86_64.appimage kdenlive20.04.appimage
cd ~

#Installing programs using NPM
sudo npm install prettier markpdf @prettier/plugin-php intelephense eslint eslint-plugin-vue -g

#Installing Powerline10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#pacman upgrade
sudo pacman -Syu

#Removing DEBS
rm -rf ~/Downloads/*

#Installing Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

#Installing OhMyZSH plugins and themes

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
