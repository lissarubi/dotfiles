#!/bin/sh

sudo pacman -Syu

#Installing programs using APT

sudo pacman -S ack alacritty audacity autoconf automake base-devel bat cmatrix composer ctags curl dunst feh ffmpeg flameshot frei0r-plugins gcc gimp git go gparted htop i3-gaps lsd lxappearance lxsession make neofetch nodejs noto-fonts-emoji npm openssh pavucontrol php postgresql python-pip ranger ruby sl supertux sxiv tmux traceroute ttf-dejavu ttf-droid ttf-fira-code ttf-ubuntu-font-family ueberzug vim virtualbox virtualbox-guest-iso w3m xclip xorg zathura-pdf-poppler zsh

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

# Install Paru

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Installing AUR's

paru bibata-cursor-theme
paru cef-minimal-3770-bin
paru firefox-nightly
paru flat-remix
paru flat-remix-gtk
paru fzf
paru glow
paru intellij-idea-ce
paru mkinitcpio-openswap
paru modhammer-edersonferreira-git
paru neovim-git
paru obs-studio-browser
paru openh264
paru pacvis-git
paru pamac-aur
paru picom-jonaburg-git
paru polybar
paru python-ueberzug-git
paru siji-git
paru spotify
paru ttf-devicons
paru zoxide

# Install pynvim

python3 -m pip install --user --upgrade pynvim

# Install my Dmenu build

cd /tmp
git clone https://github.com/edersonferreira/dmenu-edersonferreira
cd dmenu-edersonferreira
sudo make install
cd

# Installing Virtual Box

sudo echo "vboxdrv" >> /etc/modules-load.d/virtualbox.conf
sudo usermod -aG vboxusers $USER

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

#Installing Oh My ZSH
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

#Installing OhMyZSH plugins and themes

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH/custom/plugins/zsh-vi-mode

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
