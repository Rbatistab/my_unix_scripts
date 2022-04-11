#!/bin/bash

###############################################################################
# This is a space to store the commands to install software you use in your com-
# puter. This is meant to be a library of software that you may or may not need
# on your next environment set up, but will come in handy to quickly install as
# basic utils, toolbox or specific utils when you are installing a new OS, or
# updating an existing one
###############################################################################


###############################################################################
#														Specific Utilities:																#
###############################################################################

# Matplotlib - https://matplotlib.org/stable/users/installing.html
python3 -m pip install -U pip
python3 -m pip install -U matplotlib -y

# Numpy - https://numpy.org/install/
pip install numpy

# glxinfo - `apt search glxinfo` - https://dri.freedesktop.org/wiki/glxinfo/
yes | sudo apt install mesa-utils

# clinfo - `apt search glxinfo` - https://github.com/Oblomov/clinfo
apt install clinfo


###############################################################################
#														Toolbox Utilities:																#
###############################################################################

#																							[TODO] UPDATE ME (ROS2)
# ROS2-foxy - https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Binary.html
sudo apt update && sudo apt install curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
echo "For ROS2 please follow https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Binary.html for the rest of the installation"



# ------------------------------------------------------------------------------

