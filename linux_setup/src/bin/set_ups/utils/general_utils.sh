#!/bin/bash

# ------------------------------------------------------------------------------
# This are general utilities, for multiple purposes without getting into speci-
# ficity for a given set of software, add your specific software to folder
# specific utilities acording to you needs.
# It could also be easier to have a library of utilies in a file similar to this
# to record the software you use in time, so that on your next install you could
# just paste what you need into "specific_utilities.sh"

# Curl - https://curl.se
echo "Installing curl..."
sudo apt install curl

# Git - https://git-scm.com/
echo "Installing git..."
sudo apt install git

# Xclip - https://github.com/astrand/xclip
echo "Installing Xclip..."
sudo apt install xclip

# Pip - https://pip.pypa.io/en/stable/installation/
echo "Installing pip in python3..."
sudo apt install python3-pip

# For Okular - https://apps.kde.org/okular/ -> snap store
echo "Installing okular..."
sudo snap install okular

# Telegram - https://snapcraft.io/telegram-desktop
echo "Installing telegram..."
sudo snap install telegram-desktop

# ------------------------------------------------------------------------------

