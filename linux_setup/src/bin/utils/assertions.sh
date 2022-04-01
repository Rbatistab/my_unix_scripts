#!/bin/bash

# ------------------------------------------------------------------------------
# This is a space to assert the effectivity of process applied

# Logging
#NOW=$(date '+%Y-%m-%d_%H:%M:%S')
#LOG_FOLDER=""
# APP_ROOT="$(dirname "$(dirname "$(readlink -fm "$0")")")"
# see: https://stackoverflow.com/questions/20196034/retrieve-parent-directory-of-script
#LOG_FILENAME="${CURRENT_DIR}/Application_log_${NOW}.log"


# ------------------------------------------------------------------------------
# Informs on error messages and logs them
# ------------------------------------------------------------------------------
err(){
  echo -e "${RED}ERROR: Failed to perform last operation.\n${1}  ${TEXT_RESET}"
}

# ------------------------------------------------------------------------------
# Executes a command and inform on it's state of success or failure
# ------------------------------------------------------------------------------
last_command_assertion(){
  if [[ $? -eq 0 ]]; then
    echo -e "${GREEN}Successful execution.\n${?}"
  else
    err $?
  fi
}

# ------------------------------------------------------------------------------
# Evaluates the success or failure of the last command and 
# ------------------------------------------------------------------------------
command_execution_and_assertion(){
  if "@"; then
    last_command_assertion
  else
    err $?
  fi
}


# ------------------------------------------------------------------------------

