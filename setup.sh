#!/bin/bash

# setting vietnamese key
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends -y
ibus-daemon -d
ibus restart
# Đặt ibus-bamboo làm bộ gõ mặc định
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

sudo apt-get update 
sudo apt-get install git -y
sudo apt-get install neovim -y

# media codecs to play various kinds of media files
sudo apt-get install ubuntu-restricted-extras -y
