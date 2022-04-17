#!/bin/bash

###############################################################################
# This is a space to store the commands to install software you use in your com-
# puter. This is meant to be a library of software that you may or may not need
# on your next environment set up, but will come in handy to quickly install as
# basic utils, toolbox or specific utils when you are installing a new OS, or
# updating an existing one
###############################################################################


###############################################################################
#                           Utilities Library:                                #
###############################################################################

# Importing text library functions to format text and asseritions
source utils/lib.sh

# Matplotlib - https://matplotlib.org/stable/users/installing.html
green_text "Installing ..."
python3 -m pip install -U pip
python3 -m pip install -U matplotlib -y
command_assertion

# Numpy - https://numpy.org/install/
green_text "Installing ..."
python3 -m pip install -U pip
pip install numpy
command_assertion

# glxinfo - `apt search glxinfo` - https://dri.freedesktop.org/wiki/glxinfo/
green_text "Installing ..."
python3 -m pip install -U pip
sudo apt install mesa-utils
command_assertion

# clinfo - `apt search glxinfo` - https://github.com/Oblomov/clinfo
green_text "Installing ..."
python3 -m pip install -U pip
apt install clinfo
command_assertion


###############################################################################
#														Toolbox Utilities:																#
###############################################################################

#																							[TODO] UPDATE ME (ROS2)
# ROS2-foxy - https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Binary.html
green_text "Installing ..."
sudo apt update && sudo apt install curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
command_assertion
echo "For ROS2 please follow https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Binary.html for the rest of the installation"



# ------------------------------------------------------------------------------

