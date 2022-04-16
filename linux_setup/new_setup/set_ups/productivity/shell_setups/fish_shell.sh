#!/bin/bash

###############################################################################
# 																Fish Shell																	#
###############################################################################

###############################################################################
# Adds desirable features to the terminal according to the desired shell, like 
# autocompletion, git symbols and information, and a friendly UI to work with.
# Also installs a powerfull terminall similar to iterm.
###############################################################################

# Fish - https://launchpad.net/~fish-shell/+archive/ubuntu/release-3
echo "Installing fish..."
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
sudo (echo "/bin/fish") >> /etc/shells
chsh -s /bin/fish

# [TODO] add message about fish enhacement with Oh-my-fish and bass
