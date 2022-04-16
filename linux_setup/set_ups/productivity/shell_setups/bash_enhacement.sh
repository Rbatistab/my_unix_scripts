#!/bin/bash

###############################################################################
# 																Bash enhacement															#
###############################################################################

###############################################################################
# Makes bash terminal more friendly and productive 
###############################################################################


# Oh-my-bash - https://github.com/ohmybash/oh-my-bash
echo "Installing Oh-my-bash..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Changing theme to agnoster
old_theme='OSH_THEME="font"'
new_theme='OSH_THEME="agnoster"'
sed -i "s/$old_theme/$new_theme/" ~/.bashrc 
