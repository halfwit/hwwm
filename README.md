# Halfwit's Window Manager
Set of scripts around wmutils/wmgroup/watom that form my window manager

## Startup

xinitrc
```sh
# all things you start before
inotifybar &
exec hwwm
```

## Installation
Requires watom, wmgroup, wmutils
PREFIX=myprefix make install

The inotifybar is very specific to my system, but serves as an interesting example of what is possible, with the various \*bar scripts being ran on hooks or at the ends of scripts only, such that polling doesn't take too much CPU time. 
It currently works with battery and groups, but it is simple to add other items as well, see my dotfiles for examples.

## Configuration
This presumes $XDG_CONFIG_HOME/x11 exists, with the following files: 

tags
```sh

# name autofocus group
mpv false 1
firefox true 2
vim true 3
irc true 4
zathura true 5
``` 

size 
```sh
width=1363
height=751
gaps=6
fulw=1354
fulh=743
```

window
```sh
weechat '%s %s %s %s' "350" "224" "454" "261"
# Any valid sh here to emit something in the form of
# <nameofwindow> '%s %s %s %s' <minx> <miny> <maxx> <maxy>
```
