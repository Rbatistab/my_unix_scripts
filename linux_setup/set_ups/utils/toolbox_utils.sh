#!/bin/bash

###############################################################################
# Here are your everyday use software required to do your work, code editors,
# IDEs, languages, design software, etc.
###############################################################################

# Importing text library functions to format text and asseritions
source utils/lib.sh

# VScode - https://code.visualstudio.com/docs/setup/linux
green_text "Installing VSCode..."
sudo snap install --classic code
command_assertion

# Freecad - https://wiki.freecadweb.org/Installing_on_Linux
green_text "Installing Freecad..."
yes | sudo apt-get install freecad
command_assertion

# RUST - https://www.rust-lang.org/tools/install
green_text "Installing RUST..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
command_assertion
