#!/bin/bash

###############################################################################
#																	Library																			# 
###############################################################################

###############################################################################
# Functions that may be used at any point in the programs execution by any file 
# including text formatting and assertions
###############################################################################



###############################################################################
#																Text format																		# 
###############################################################################
# Importing format variables:
source utils/colors.sh

###############################################################################
# Formats a text according to a desired color or style.
# Globals:
#		None
# Arguments:
#   [style] [text]
#		*the style must be in colors.sh
# Retuns:
#		None
###############################################################################
f_text(){
 echo -e "${1}${2}${NC}\0"
 return 0
}

###############################################################################
# The next format functions use f_text to format a text passing the proper.
# style from color.sh according to the desired case.
# Globals:
#		None
# Arguments:
#   text
# Retuns:
#		None
###############################################################################
green_text(){
	f_text $Green "$1" 
}
red_text(){
	f_text $Green "$1" 
}
bgreen_text(){
	f_text $BGreen "$1" 
}
byellow_text(){
	f_text $BYellow "$1" 
}
bred_text(){	#bold red
 f_text $BRed "$1"
}


###############################################################################
#																Assertions																		# 
###############################################################################

###############################################################################
# Makes an assertion according to the state of success of the last command
# executed
# Globals:
#		Exit status of last task - $?
# Arguments:
#   None
# Retuns:
#		None
###############################################################################
command_assertion(){
	if [ $? -eq 0 ]; then
		bgreen_text "[DONE] Exit status: $?"
	else
		bred_text "[ERROR] Faililed at performing this task"
		bred_text "[ERROR] Exit status: $?"
	fi
}
		
