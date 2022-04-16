#!/bin/bash

###############################################################################
# Here are your everyday use software required to do your work, code editors,
# IDEs, languages, design software, etc.
###############################################################################

# VScode - https://code.visualstudio.com/docs/setup/linux
echo "Installing VSCode..."
sudo snap install --classic code

# Freecad - https://wiki.freecadweb.org/Installing_on_Linux
echo "Installing Freecad..."
yes | sudo apt-get install freecad

# RUST - https://www.rust-lang.org/tools/install
echo "Installing RUST..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
