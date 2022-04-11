#!/bin/bash

###############################################################################
# This is a space to add the software that helps your common productivity work-
# flow, thinks like todoists, emacs-orgmode, multiclipers, web serch shortcuts
# and many others specific to your personal preferences
###############################################################################

# Todoist - https://snapcraft.io/todoist
sudo snap install todoist

# CopyQ - https://github.com/hluk/CopyQ
sudo add-apt-repository ppa:hluk/copyq
sudo apt update 
sudo apt install copyq

# Albert - https://albertlauncher.github.io/installing/#using-official-albert-repositories
sudo apt update
curl "https://build.opensuse.org/projects/home:manuelschneid3r/public_key" | apt-key add -    # sudo
sudo echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/home_manuelschneid3r.gpg > /dev/null
sudo apt update
sudo apt install albert

# Terminator - https://terminator-gtk3.readthedocs.io/en/latest/#
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

# Fish - https://launchpad.net/~fish-shell/+archive/ubuntu/release-3
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
sudo (echo "/bin/fish") >> /etc/shells
chsh -s /bin/fish

