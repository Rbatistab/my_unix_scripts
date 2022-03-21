#!/bin/bash

# ------------------------------------------------------------------------------
# -------			Wallpaper SlideShow			--------
# Description:	Uses CRON to change the Wallpaper of the Desktop and lock screen
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------

# To see the current folder of the desktop background image:
# gsettings get org.gnome.desktop.background picture-uri


# Setting variables:
WALLPAPERS_DIR=$HOME/Pictures/WallPapers

# Crontab runs in a very restricted set of environment variables
#PID=$(pgrep gnome-session)
#export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

# Utils Functions:

# ------------------------------------------------------------------------------
# -------			getRandomPicture			--------
# Description: Gets a random picture name from the Wallpapers directory
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
getRandomPicture() {
  ls $WALLPAPERS_DIR |sort -R | tail -1 |while read file; do
    echo "${file}"
  done
}

# ------------------------------------------------------------------------------
# -------			SetDesktopBackground			--------
# Description: Sets the desktop image
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
setDesktopBackground() {
  gsettings set org.gnome.desktop.background picture-uri "file://${1}"
}

#					TBD
# ------------------------------------------------------------------------------
# -------                       SetScreenSaverBackground                --------
# Description: Sets the desktop image
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
#setScreenSaverBackground() {
#  gsettings set org.gnome.screensaver.background picture-uri "file://${1}"
#}


# Algorithm execution:

# 1) Get a random picture
wallpaper="$(getRandomPicture)"
new_image="${WALLPAPERS_DIR}/${wallpaper}"

# 2) Set new wallpaper
setDesktopBackground $new_image
# TBD: lock screen wallpaper


# crontab debugging
echo "hello there! - $(date) - ${wallpaper}" >> /home/hp/batiruss_log.log
gsettings --help >>  /home/hp/batiruss_log.log
python --version >>  /home/hp/batiruss_log.log
#bash --version >>  /home/hp/batiruss_log.log

echo "gsettings called" >> /home/hp/batiruss_log.log
