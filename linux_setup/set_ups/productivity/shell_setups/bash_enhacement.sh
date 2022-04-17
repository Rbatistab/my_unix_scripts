#!/bin/bash

###############################################################################
#                               Bash enhacement                               #
###############################################################################

###############################################################################
# Makes bash terminal more friendly and productive 
###############################################################################

# Importing text library functions to format text and asseritions
source utils/lib.sh

# Oh-my-bash - https://github.com/ohmybash/oh-my-bash
green_text "Installing Oh-my-bash..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
command_assertion

# Changing theme to agnoster
#old_theme='OSH_THEME="font"'
#new_theme='OSH_THEME="agnoster"'
#sed -i "s/$old_theme/$new_theme/" ~/.bashrc 
