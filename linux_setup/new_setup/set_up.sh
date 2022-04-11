#!/bin/bash

###############################################################################
# This script is to help you set up an environment quickly after a new installa
# tion of an OS by automating the steps of searching and running the commands
# required to install the software you need in your everyday activities.

# Advice: go to folder 'utils' and review the software in 'general_utils.sh',
# 'specific_utitils.sh', 'toolbox_utils.sh' and 'utils_library.sh' to customize      ----> review this whole thing
# the environment software to your specific needs.

# Also if you will set up productivity software check  folder 'productivity' as
# well. Consider that it sets 'Fish shell' and 'Terminator', you may wish to
# customize this as well.
###############################################################################



###############################################################################
# 																	Functions:																#
###############################################################################


###############################################################################
# Prints usage information to the user.
# Globals:
#		None
# Arguments:
#   None
# Retuns:
#		None
###############################################################################
print_help_message(){
  echo "Usage: bash set_up.sh [--full] [-f]"
  echo "No arguments:			Installs basic utilities"
  echo "[-f], [--full]:		Full Installation: Installs basic and productivity software"
  echo "[-h], [--help]:		Help"
}


###############################################################################
# Updates the system and then install the utils located at							---------> update me
# Globals:
#		None
# Arguments:
#   None
# Retuns:
#		None
###############################################################################
install_utils(){
  echo "Updating:"
  #sudo apt update
  echo "sudo apt update"
  echo "Installing utils"
  # Execute the scripts for basic utils only with a yes command:
  yes | bash set_ups/utils/utils.sh
}

# Let's add a install_productivities here!

###############################################################################
# 															Progam excecution:												 		#
###############################################################################

# Importing colors:
# source /colors/colors.sh      							-----> later

# Instalation options:
if [ -z "$1" ]; then
  # User adds no argument, hence asks for basic utilities install:
 	install_utils
elif [[ $# != 0 ]]; then
  # User asks for help:
  if [[ ($1 == "--help") || ($1 == '-h')]]; then
    print_help_message
  # User ask for basic and productivity install:
  elif [[ ($1 == "--full") || ($1 == "-f")]]; then
    install_utils
    echo "this is a full install"
  else
    echo "Wrong argument given, unknown command '$1'"
    print_help_message
  fi
fi

###############################################################################
