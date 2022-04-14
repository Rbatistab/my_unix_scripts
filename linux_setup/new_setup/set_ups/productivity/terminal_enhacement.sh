#!/bin/bash

###############################################################################
# 													Terminal Enhacement:															#
###############################################################################

###############################################################################
# Adds desirable features to the terminal according to the desired shell, like 
# autocompletion, git symbols and information, and a friendly UI to work with.
# Also installs a powerfull terminall similar to iterm.
###############################################################################

# Terminator - https://github.com/gnome-terminator/terminator/blob/master/INSTALL.md 
echo "Installing Terminator..."
sudo add-apt-repository ppa:mattrose/terminator
sudo apt-get update
sudo apt install terminator

# Here we should interact with user to select shell

# Fish - https://launchpad.net/~fish-shell/+archive/ubuntu/release-3
#sudo apt-add-repository ppa:fish-shell/release-3
#sudo apt-get update
#sudo apt-get install fish
#sudo (echo "/bin/fish") >> /etc/shells
#chsh -s /bin/fish

