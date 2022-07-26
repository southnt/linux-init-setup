#!/bin/bash

# Permanently off swap
sudo swapoff -a && sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# setting vietnamese key
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends -y
ibus-daemon -d
ibus restart
# set ibus-bamboo as default
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

sudo apt-get install git -y
sudo apt-get  install curl  -y

# Vim, Neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim -y

# Install font for neovim
# Set terminal font to Droid Sans Nerd Font Complete
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

cp .vimrc ~/
cp -r nvim ~/.config/
# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# For vim
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Reload after add pakage: source %
# PlugInstall to install
# :PlugUpdate to update or :PlugClean to remove unsuse plugins




# media codecs to play various kinds of media files
sudo apt-get install ubuntu-restricted-extras -y
sudo snap install sublime-text --classic

# sudo apt-get install python-dev python-pip python3-dev python3-pip
