# my_unix_scripts
RB's personal scripts
For a better visual experience open this file in a markdown editor, like https://dillinger.io/ or see in git

# How to use this directory?

(Optional)First go to Home by running:

```
$ cd
```

Then clone this folder in home(or in whatever path you desire):

```
$ git clone git@github.com:Rbatistab/my_unix_scripts.git
```

This will clone several folders with one or more scripts to do a particular function:
1. An environment set up automation
2. A WallPaper slideshow(in progress)

## 1 - Linux environment automated setup with productivity features:
This program helps quickly set up an environment after installing an OS.
The way better use of this is program is to customized it to add the everyday sofware you use into the set_up scripts, so that next time you need to format or buy a new computer you can do it very quickly, without finfing the commands from scratch again. 
Also this program provides productuvity tools that help you save time and energy on everyday tasks, like the shell enhacements.

### *Basic install:* 

[Curl](https://curl.se) - [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) - [Xclip](https://github.com/astrand/xclip) - [Pip](https://pip.pypa.io/en/stable/installation/) - [Okular](https://apps.kde.org/okular/) - [Telegram](https://snapcraft.io/telegram-desktop) - [VSCode](https://code.visualstudio.com/docs/setup/linux) - [Freecad](https://wiki.freecadweb.org/Installing_on_Linux) - [RUST](https://www.rust-lang.org/tools/install)

### *Full (prod):* 

Basic install + [Todoist](https://snapcraft.io/todoist) - [CopyQ](https://github.com/hluk/CopyQ) - [Albert](https://albertlauncher.github.io/installing/#using-official-albert-repositories) - [Powerline fonts](https://github.com/powerline/fonts) - [Terminator](https://github.com/gnome-terminator/terminator/blob/master/INSTALL.md)
Plus a terminal enhacemnt, either from [enhancing Bash](https://github.com/ohmybash/oh-my-bash) or from installing and setting up [zsh](https://www.zsh.org/) or [fish](https://fishshell.com/) shells.

### Advice to anyone reading:
I'm using my personal configuration and set up, please navigate to these files and cutomize them to what you need:
* `/my_unix_scripts/linux_setup/set_ups/utils/utils.sh`
* `/my_unix_scripts/linux_setup/set_ups/productivity/productivity/productivity.sh`

Add a `.vimrc` config, docker, intelliJ or whatever is best for you to install in as many manual steps as possible :)

### One more, buggy, thing
There are issues with `Albert` and `Terminator` related to their repos that are currently not working. I'm commenting the instructions to install them both, but feel free to uncomment at `/my_unix_scripts/linux_setup/set_ups/productivity/terminal_enhacement` line 30, or by looking into [here](https://github.com/gnome-terminator/terminator/blob/master/INSTALL.md)

## Basic install:

1. Go to `linux_setup` directory and run:
  ```
  chmod +x install.sh
  ./install.sh
  ```

## Full install(includes productivity system):

1. Go to `linux_setup` directory and run:
  ```
  chmod +x install.sh
  ./install.sh
  ```
2. Set up CopyQ:
    * Open CopyQ -> Preferences -> Autostart
    * Go to Ubuntu settings -> Keyboard shortcuts -> find the "+" simbol at the end, and add your shortcut
    * for example alt - ctrl - c

## 2 - WallPaper slideshow script(Not working)

Crontab will allow you to automate execution of scripts in time by indicating a secuence like:

```
min hr day month weekday <INSTRUCTION>
```
Having:
* min(0 - 59)
* hr(0 - 23)
* day(1 - 31)
* month(1 - 12)
* weekday(0 - 7)

First give permissions to execute the Slideshow script(this should run to the folder where this repository is located in your computer):

```
$ chmod +x ~/my_unix_scripts/wallpaper_slideshow/wallpaper_slideshow.sh
```

Then, to use CRON to create an slideshow of wallpapers that changes every 10 minutes (or in any time you prefer) run:

```
$ crontab -e
```

And add this line at the end(yes including the space)

```
10 * * * * ~/my_unix_scripts/wallpaper_slideshow/wallpaper_slideshow.sh
	
```

Then save

