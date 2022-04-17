#!/bin/bash

###############################################################################
#                                 Install:                                    #
###############################################################################

###############################################################################
# This program will help you set up an environment quickly after a new installa-
# tion of an OS by automating the steps of searching and running the commands
# required to install the software you need in your everyday activities.

# Advice: go to folder 'utils' and review the software in 'general_utils.sh',
# 'specific_utitils.sh', 'toolbox_utils.sh' and 'utils_library.sh' to customize
# the environment software to your specific needs. They are in:
# 'set_ups/utils'
# In a similar fashion check directory 'set_ups/productivity'
###############################################################################

# Logging
NOW=$(date '+%Y-%m-%d_%H:%M:%S')
LOG_DIR='logs'
LOG_FILENAME="${LOG_DIR}/${NOW}.log"
bash set_up.sh | tee -a "${LOG_FILENAME}"

