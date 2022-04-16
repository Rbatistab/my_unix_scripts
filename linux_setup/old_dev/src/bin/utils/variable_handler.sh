#!/bin/bash

# ------------------------------------------------------------------------------
# Variables used in certain parts of the code execution.

# Array of variables:
declare -A utils_variables	# Variable definitions to be declared
#declare -a variable_tracker	# Tracks variable names to be removed   -----> Remove me if I'm not in use
utils_variables=(
  # General Reseter:
  [TEXT_RESET]='\033[0m'	# TR: Text reset in color and style
  # Styles:
  [BOLD]='\e[1m'		# Bold
  # Colors:
  [RED]='\033[0;31m'		# Red
  [GREEN]='\033[0;32m'		# Green
)

# ------------------------------------------------------------------------------
# Removes the declarations of variables after being used:
# ------------------------------------------------------------------------------
remove_var(){
  unset ${1}
}

# ------------------------------------------------------------------------------
# Loops to declare constant environtment variables required by the programs exe-
# cution
# ------------------------------------------------------------------------------
declare_utils_variables(){
  echo "Setting installation variables"
  for key in "${!utils_variables[@]}"; do
    export ${key}=${utils_variables[${key}]}
  done
  echo ""
  echo "Testing d_u_v inside variable_handler:"
  variables_testing
}

# ------------------------------------------------------------------------------
# Loops to cleann declared variables
# ------------------------------------------------------------------------------

clean_utils_variables(){
  echo "Cleaning installation variables"
  for key in "${!utils_variables[@]}"; do
    unset ${key}
  done
  unset -f utils_variables
}

# Modify me to be part of real testing and assertion
variables_testing(){
  echo "The value expected for GREEN is '${GREEN}', expected: '\033[0;32m'"
  echo "The value expected for BOLD is '${BOLD}', expected: '\e[1m'"
}

# ------------------------------------------------------------------------------

