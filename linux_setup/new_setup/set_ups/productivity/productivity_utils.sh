#!/bin/bash

###############################################################################
# 														General productivity:														#
###############################################################################

###############################################################################
# This is a space to add the software that helps your common productivity work-
# flow, thinks like todoists, emacs-orgmode, multiclipers, web serch shortcuts
# and many others specific to your personal preferences
###############################################################################

# Todoist - https://snapcraft.io/todoist
echo "Installing todoist..."
sudo snap install todoist

# CopyQ - https://github.com/hluk/CopyQ
echo "Installing CopyQ..."
sudo add-apt-repository ppa:hluk/copyq
sudo apt update 
sudo apt install copyq

# Albert - https://albertlauncher.github.io/installing/#using-official-albert-repositories
echo "Installing Albert..."
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_21.10/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_21.10/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert

# Powerline fonts - https://github.com/powerline/fonts
sudo apt-get install fonts-powerline
# clone
#git clone https://github.com/powerline/fonts.git --depth=1
# install
#cd fonts
#./install.sh
# clean-up a bit
#cd ..
#rm -rf fonts
