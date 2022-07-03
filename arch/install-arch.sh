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
git clone https://github.com/lissaferreira/dmenu-lissaferreira
cd dmenu-lissaferreira
sudo make install
cd

# Installing Virtual Box

sudo echo "vboxdrv" >> /etc/modules-load.d/virtualbox.conf
sudo usermod -aG vboxusers $USER

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
