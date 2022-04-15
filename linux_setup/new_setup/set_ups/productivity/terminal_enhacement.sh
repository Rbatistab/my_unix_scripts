#!/bin/bash

###############################################################################
#															Terminal Enhancement														#
###############################################################################

###############################################################################
# Installs a powerfull terminall, terminator.
# Adds desirable features to the terminal according to the desired shell, like 
# autocompletion, git symbols and information, and a friendly UI to work with.
###############################################################################



###############################################################################
#																Functions 																		#
###############################################################################


###############################################################################
# Installs terminator terminal
# Globals:
#		shells
# Arguments:
#   None
# Retuns:
#		None
###############################################################################
install_terminator(){
	# Terminator - https://github.com/gnome-terminator/terminator/blob/master/INSTALL.md 
	echo "Installing Terminator..."
	sudo add-apt-repository ppa:mattrose/terminator
	sudo apt-get update
	sudo apt install terminator
}

###############################################################################
# Show a option menu to the uset with the shell options and delegates to the 
# proper function to handle the installation and set up
# Globals:
#		shells
# Arguments:
#   None
# Retuns:
#		None
###############################################################################
shell_options_menu(){
  PS3="Please select the option that best fits your preferences: "
  #select shell in $shells; do
  select shell; do
    case $shell in
	    'Zsh')
		    echo "zsh"
			  break
		    ;;
	    'Fish')
	  	  echo "fish"
			  break
		    ;;
	  	'Both')
		  	echo "both"
				break
		  	;;
	  	'None')
		  	echo "none"
				break
		  	;;
	  	*)
		  	echo "Invlid option. Please select only an option from 1 to $#."			
		  	;;
  	esac
	done
}



###############################################################################
# 																Program Execution														#
###############################################################################
# Installing terminator terminal
#install_terminator
echo "install_terminator"
# Menu for select options of shell
shells=('Zsh' 'Fish' 'Both' 'None')

# Call out to the shell options menu
echo -ne "Do you wish to install any of these shells?\n"
shell_options_menu "${shells[@]}"

