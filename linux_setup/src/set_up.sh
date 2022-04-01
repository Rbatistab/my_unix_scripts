#!/bin/bash

# ------------------------------------------------------------------------------
# This script is to help you set up an environment quickly after a new installa-
# tion of an OS by automating the steps of searching and running the commands
# required to install the software you need in your everyday activities.

# Advice: go to folder 'utilis' and review the software in 'general_utils.sh',
# 'specific_utitils.sh', 'toolbox_utils.sh' and 'utils_library.sh' to customize
# the the environment software to your specific needs.

# Also if you will set up productivity software check  folder 'productivity' as
# well. Consider that it sets 'Fish shell' and 'Terminator', you may wish to
# customize this as well.

# Importing colors:
source /colors/colors.sh

# Information message to the user:
print_help_message(){
  echo "Usage: bash set_up.sh [--productivity] [-p]"
  echo "No arguments:			Installs basic utilities"
  echo "[-p], [--productivity]:		Installs basic and productivity software"
  echo "[-h], [--help]:			Help"
}

install_utils(){
  echo "Updating:"
  sudo apt update
  echo "Installing utils"
  # Execute the scripts for basic utils only with a yes command:
  yes | bash set_ups/utils/utils.sh
}


if [ -z "$1" ]; then
  # User adds no arguoment, hence asks for basic utilities install:
  install_utils
elif [[ $# != 0 ]]; then
  # User asks for help:
  if [[ ($1 == "--help") || ($1 == '-h')]]; then
    print_help_message
  # User ask for basic and productivity install:
  elif [[ ($1 == "--productivity") || ($1 == "-p")]]; then
    install_utils
    echo "this is a full install"
  else
    echo "Wrong argument given, unknown command '$1'"
    print_help_message
  fi
fi

# ------------------------------------------------------------------------------
