# my_unix_scripts
Russell's personal scripts
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
1. A WallPaper slideshow
2. An environment set up automation

## 1 - Linux environment automated setup with productivity features(update me)
### *Basic install:* 

[Curl](https://curl.se) - [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) - [Xclip](https://github.com/astrand/xclip) - [Pip]()  - [Matplotlib]()  - [Numpy]()  - [RUST]()  - [glxinfo]()  - [clinfo]()  - [Freecad]()  - [VScode]()  - [Okular](https://apps.kde.org/okular/)  - [Telegram](https://snapcraft.io/telegram-desktop) 

### *Full (prod):* 

Curl - Git - Xclip - Pip - Matplotlib - Numpy - RUST - glxinfo - clinfo - Freecad - ROS2 - VScode - Okular - Telegram - CopyQ - Albert - Powerline -  Fish - Oh-my-fish - Terminator - Todoist


## Basic install:

**Note:** If you need to install ROCm open file `setup_bash_basic` in any text editor, and as says in line 9, remove the `#`s in lines 11 and 12

1. Run: 
```
chmod +x setup_bash.sh
sudo ./setup_bash.sh
```
2. Set your ssh key: [GitHub SSH guide](https://docs.gitlab.com/ee/ssh/)
3. If you installed ROCm chech that you have these folders: 
    * /opt/rocm/bin/rocminfo
    * /opt/rocm/opencl/bin/clinfo
    * or run:
      ```
      clinfo 
      ```


## Full install(includes productivity system):


**Note:** If you need to install ROCm open file `setup_bash_basic` in any text editor, and as says in line 9, remove the `#`s in lines 11 and 12

1. Run:
  ```
  chmod +x setup_bash.sh
  sudo ./setup_bash.sh
  ```
2. Open Terminator, Right click in the terminal -> Preferences -> Profiles -> Command
    * Check "Run command as login shell"
    * Check "Run a custom command instead of my shell"
    * Custom command: /bin/fish
    * When command exits: "Hold the terminal open"
3. Restart Terminator, it should run on fish
4. Run:  
  ```
  sudo ./setup_fish
  ```
5. Set up CopyQ:
    * Open CopyQ -> Preferences -> Autostart
    * Go to Ubuntu settings -> Keyboard shortcuts -> find the "+" simbol at the end, and add your shortcut
    * for example alt - ctrl - c
6. Set up your albert abbreviations:
    * Open Albert -> Settings -> General
      - Hotkey: --set your hot key to search--
      - Check Autostart on login
    * Extensions -> WebSearch
      - Click the "+" sign and add the commands in Albert_commands.txt, is easier if you use copyQ :)
7. Set your ssh key: [GitHub SSH guide](https://docs.gitlab.com/ee/ssh/)
8. Add Fish abbreviations:
  * Run: 
  ```
  cd ~/.config/fish/
  sudo nano config.fish
  ```
  *  Add the whole content of the file `shortcuts\fish_abbreviations.txt`
  * Save


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

