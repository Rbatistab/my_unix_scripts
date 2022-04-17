#!/bin/bash

###############################################################################
#                                 Productivity                                #
###############################################################################

###############################################################################
# This calls to 3 different script files to install utilities:
# - general_productivity: General purpose utilities that support other software
#                         or your working workflow
# - terminal_enhacement:  Offers different shells and enhacements to make an
#                         smoother workflow and a nicer environment 
# - abbreviations:        Abbreviations for common commands with lesser
#                         characters, like aliases
###############################################################################

yes | bash set_ups/productivity/general_productivity.sh
bash set_ups/productivity/terminal_enhacement.sh
#bash set_ups/productivity/abbreviations.sh   [TODO]

echo "Installation done!"
echo -ne "\nYou may consider manually installing these:
Powerline10k theme: https://github.com/romkatv/powerlevel10k#getting-started\n"
