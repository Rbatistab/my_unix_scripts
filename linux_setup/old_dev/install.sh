#!/bin/bash

# ------------------------------------------------------------------------------
# This script calls to load environment variables needed trhoug the process and
# Sets up the ..........                                      --------------------->  finish me

# ------------------------------------------------------------------------------
#	-								-	* -> reference line
# -------			Section template			--------
# Description: 
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# -------                       Enabling testing                        --------
# Description: 
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# -------		Installation environment variables setup	--------
# Description: Sets up variables for:
#	- Directory paths
#	- Text formating
# These variables will only live during the installation, they are not permanent
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------

# Enable project dir as local variable to be used in other scripts
declare -xr ENV_SET_UP_DIR=$(dirname $(realpath $0) )
UTILS_DIR=$ENV_SET_UP_DIR/src/bin/utils

# Calling to variable_handler which contains the rest of environment variables
echo "Loading environment variables:"
source $UTILS_DIR/variable_handler.sh
declare_utils_variables

variables_testing				#             ---------->                Delete this assertion









# Assertions utilities
#source $UTILS_DIR/assertions.sh

#echo "Quick assertion testing"
#echo "Happy:"
#last_command_assertion
#echo "Sad:"
#ehco "bad asserstion"
#last_command_assertion

#echo "command_execution_and_assertion"
#echo "Happy:"
#command_execution_and_assertion echo "hola"
#echo "Sad:"
#command_execution_and_assertion ehco "hola"

#SET_UP_SUCCESSFULL=1

# Triggering the set up installation file
#bash src/install_test.sh

#if [[ SET_UPSUCCESSFULL == 1  ]]; then
#  echo "Success"
#else
# echo "fail"
#fi


# ------------------------------------------------------------------------------
# -------			Final cleaning				--------
# Description:
# 	- Cleans variables exported in variable_handler.sh
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------

clean_utils_variables
unset -f ENV_SET_UP_DIR
unset -f UTILS_DIR

if [ -z ${GREEN+x} ]; then echo "no"; else echo "yes"; fi

# Add an exit status, looks cool


# ------------------------------------------------------------------------------
