#!/bin/bash

###############################################################################
# 																		Zsh shell																#
###############################################################################

###############################################################################
# Zsh is an extension of bash shell, adding features
###############################################################################

# Zsh shell - https://www.geeksforgeeks.org/how-to-install-z-shellzsh-on-linux/
echo "Installing zsh..."
sudo apt-get update
sudo apt-get install zsh
chsh -s /usr/bin/zsh


# Oh-my-zsh - https://ohmyz.sh/#install
echo "Installing Oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Changing theme to agnoster
old_theme='ZSH_THEME="robbyrussell"'
new_theme='ZSH_THEME="agnoster"'
sed -i "s/$old_theme/$new_theme/" ~/.zshrc



###############################################################################
# 										Specific configuration lost to bash											#
###############################################################################
# Cargo's path:
echo -ne "\n# Setup RUST environment setting in zsh - https://www.rust-lang.org/tools/install
source $HOME/.cargo/env
" >> ~/.zshrc

