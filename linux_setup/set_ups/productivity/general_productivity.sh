#!/bin/bash

###############################################################################
#                           General productivity:                             #
###############################################################################

###############################################################################
# This is a space to add the software that helps your common productivity work-
# flow, thinks like todoists, emacs-orgmode, multiclipers, web serch shortcuts
# and many others specific to your personal preferences
###############################################################################

# Importing text library functions to format text and asseritions
source utils/lib.sh

# Todoist - https://snapcraft.io/todoist
green_text "Installing todoist..."
sudo snap install todoist
command_assertion

# CopyQ - https://github.com/hluk/CopyQ
green_text "Installing CopyQ..."
sudo add-apt-repository ppa:hluk/copyq
sudo apt update 
sudo apt install copyq
command_assertion

# Albert - https://albertlauncher.github.io/installing/#using-official-albert-repositories
yellow_text "Unable to install albert at this time, working on the issue or looking for a replacement alternative to Mac's Alfred"
byello_text "[Skipping]	Albert - https://albertlauncher.github.io/installing/#using-official-albert-repositories"
#green_text "Installing Albert..."
#curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
#echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_21.10/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
#sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_21.10/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
#sudo apt update
#sudo apt install albert
#command_assertion


# Powerline fonts - https://github.com/powerline/fonts
green_text "Installing Powerline fonts..."
sudo apt-get install fonts-powerline
command_assertion
# Alternative installation:
#git clone https://github.com/powerline/fonts.git --depth=1
# install
#cd fonts
#./install.sh
# clean-up a bit
#cd ..
#rm -rf fonts
