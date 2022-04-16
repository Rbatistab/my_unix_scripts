#!/usr/bin/env fish

###############################################################################
# 																Fish set up																	#
###############################################################################



# [TODO] 



###############################################################################
# Zsh is an extension of bash shell, adding features
###############################################################################

# oh-my-fish - https://github.com/oh-my-fish/oh-my-fish
echo "Installing oh-my-fish..."
curl -L https://get.oh-my.fish | fish

# omf config path
set omf_config ~/.config/fish/conf.d/omf.fish


# bobthefish - https://github.com/oh-my-fish/theme-bobthefish
omf install bobthefish
omf theme bobthefish

# bass - https://github.com/edc/bass
omf install bass

# Setup RUST environment setting in fish - https://www.rust-lang.org/tools/install
bass source $HOME/.cargo/env

