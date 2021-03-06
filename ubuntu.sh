#!/bin/sh
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y silversearcher-ag \
 zsh \
 tmux \
 dconf-cli \
 vim-gnome
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
~/.cc_dotfiles/gnome-terminal-colors-solarized/install.sh
