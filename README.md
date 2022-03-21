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

## 1 - WallPaper slideshow script:

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

