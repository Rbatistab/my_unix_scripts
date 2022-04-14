#!/bin/bash

echo -ne "Do you wish to install any of these shells?
  1) ZSH
  2) Fish
  3) Both
  4) None of them, bash is OK
Please select the option that best fits your preferences: "

read shells_to_install
echo "Shells: $shells_to_install"

if		[["1" == "$shells_to_install"]]; then
  echo "ZSH"
elif	[["2" == "$shells_to_install"]]; then
  echo "Fish"
elif 	[["3" == "$shells_to_install"]]; then
  echo "both"
elif	[["4" == "$shells_to_install"]]; then
  echo "none"
else
  echo "Option not valid, taking as a default"
fi

echo -e "Select a shell:
  1) ZSH
  2) Fish
  3) Bash
please enter one number (You may combine Fish with bash or Fish with ZSH)."

#read option1 option2

#echo "$option1"
#echo "$option2"


