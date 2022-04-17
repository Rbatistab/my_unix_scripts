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


############################################################################### ----> Do I really need this section?
#																	Variables[TODO]:																	#
###############################################################################
#CURRENT_DIR=
# Enable project dir as local variable to be used in other scripts
#declare -xr ENV_SET_UP_DIR=$(dirname $(realpath $0) )
#UTILS_DIR=$ENV_SET_UP_DIR/src/bin/utils

# Calling to variable_handler which contains the rest of environment variables
#echo "Loading environment variables:"
#source $UTILS_DIR/variable_handler.sh
#declare_utils_variables

###############################################################################
#																Importing utils																#
###############################################################################
# Importing library functions to be used in utilities like formatting text:
source utils/lib.sh


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
  echo -ne "\nUsage: $0 bash set_up.sh [--full] [-f]
No arguments:			Installs basic utilities
	[-f], [--full]:		Full Installation: Installs basic and productivity software
	[-h], [--help]:		Help\n"
}

###############################################################################
# Updates the system and then install the utils located at set_ups/utils
# Globals:
#		None
# Arguments:
#   None
# Retuns:
#		None
###############################################################################
install_utils(){
  green_text "Starting instalation, updating..."
	sudo apt update
  command_assertion
	green_text "Installing basic utils..."
  # Execute the scripts for basic utils only with a yes command:
  yes | bash set_ups/utils/utils.sh
}

###############################################################################
# Installs the productivity tools found in directory set_ups/productivity
# Globals:
#		None
# Arguments:
#   None
# Retuns:
#		None
###############################################################################
install_fulls(){
  green_text "Installing productivity applications..."
  # Execute the scripts for productivity utils with a yes command:
  bash set_ups/productivity/productivity.sh
}



###############################################################################
# 															Progam excecution:												 		#
###############################################################################


# Instalation options:
if 	[[ -z "$1" ]]; then
  # User adds no argument, hence asks for basic utilities install:
 	install_utils
elif [[ $# != 0 ]]; then
  # User asks for help:
  if [[ ($1 == "--help") || ($1 == '-h')]]; then
    print_help_message
  # User ask for basic and productivity install:
  elif [[ ($1 == "--full") || ($1 == "-f")]]; then
    install_utils
		install_fulls
  else
    bred_text "[ERROR]	Wrong argument given, unknown command '$1'"
    print_help_message
  fi
fi

# Final information to the user on the state of success
if	[ $? -eq 0 ]; then
	bgreen_text "Done! Execution successful."
	bgreen_text "Return: ${?}"
else
	bred_text "Unsuccessful execution."
	bred_text "Return: ${?}"
fi
##############################################################################
