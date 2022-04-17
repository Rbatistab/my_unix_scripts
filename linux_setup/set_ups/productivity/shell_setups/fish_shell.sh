#!/bin/bash

###############################################################################
# 																Fish Shell																	#
###############################################################################

###############################################################################
# Adds desirable features to the terminal according to the desired shell, like 
# autocompletion, git symbols and information, and a friendly UI to work with.
# Also installs a powerfull terminall similar to iterm.
###############################################################################

# Importing text library functions to format text and asseritions
source utils/lib.sh

# Fish - https://launchpad.net/~fish-shell/+archive/ubuntu/release-e
green_text "Installing fish..."
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
sudo (echo "/bin/fish") >> /etc/shells
chsh -s /bin/fish
command_assertion

# [TODO] add message about fish enhacement with Oh-my-fish and bass
