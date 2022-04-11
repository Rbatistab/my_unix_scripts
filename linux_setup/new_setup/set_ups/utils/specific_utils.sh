#!/bin/bash

###############################################################################
# This is a space for software that support the software you use most often but
# which is not a general use utility, but specific, like may be numpy or
# matplotlib to develop in ROS.
# This commands will install software to support your toolbox as well.
##############################################################################

# Powerline fonts for terminal themes like (oh-m-fish) in fish
echo "Installing Powerline..."
yes | pip3 install --user powerline-status
