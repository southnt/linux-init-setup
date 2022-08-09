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

# Vim, Neovim
sudo apt-get install neovim -y
cp .vimrc ~/
cp -r nvim ~/.config/
# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# media codecs to play various kinds of media files
sudo apt-get install ubuntu-restricted-extras -y
