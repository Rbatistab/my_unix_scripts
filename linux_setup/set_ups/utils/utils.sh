#!/bin/bash

###############################################################################
#                                   Utils                                     #
###############################################################################

###############################################################################
# This calls to 3 different script files to install utilities:
# - general_utils:  General purpose utilities that support other software or
#	                  your working workflow
# - toolbox_utils:  The tools you use in your everyday work
# - specific_utils: A deeper version of general_utils, supporting more specific
#                   software
###############################################################################

bash set_ups/utils/general_utils.sh
bash set_ups/utils/toolbox_utils.sh
bash set_ups/utils/specific_utils.sh
