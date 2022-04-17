#!/bin/bash

###############################################################################
#                               General utils:                                #
###############################################################################

###############################################################################
# This are general utilities, for multiple purposes without getting into speci-
# ficity for a given set of software, add your specific software to folder
# specific utilities acording to you needs.
# It could also be easier to have a library of utilies in a file similar to this
# to record the software you use in time, so that on your next install you could
# just paste what you need into "specific_utilities.sh"
###############################################################################

# Importing text library functions to format text and asseritions
source utils/lib.sh

# Curl - https://curl.se
green_text "Installing curl..."
sudo apt install curl
command_assertion

# Git - https://git-scm.com/
green_text "Installing git..."
sudo apt install git
command_assertion

# Xclip - https://github.com/astrand/xclip
green_text "Installing Xclip..."
sudo apt install xclip
command_assertion

# Pip - https://pip.pypa.io/en/stable/installation/
green_text "Installing pip in python3..."
sudo apt install python3-pip
command_assertion

# For Okular - https://apps.kde.org/okular/ -> snap store
green_text "Installing okular..."
sudo snap install okular
command_assertion

# Telegram - https://snapcraft.io/telegram-desktop
green_text "Installing telegram..."
sudo snap install telegram-desktop
command_assertion
