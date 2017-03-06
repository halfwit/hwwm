# Halfwit's Window Manager
Set of scripts around wmutils/wmgroup/watom that form my window manager

## Installation
Requires watom, wmgroup, wmutils
Copy files into $XDG_DATA_HOME/x11/
Modify autotag, watcher, and most likely the groups script to match your setup. The inotifybar is very specific to my system, but serves as an interesting example of what is possible, with the various \*bar scripts being ran on hooks or at the ends of scripts only, such that polling doesn't take too much CPU time. 


## Configuration
This presumes $XDG_CONFIG_HOME/x11 exists, with the following files: 

Size 
```sh
width=1363
height=751
gaps=6
fulw=1354
fulh=743
```

windows/default
```sh
printf '%s %s %s %s %s\n' "350" "224" "454" "261" "$id"
```

windows/titlenameofprogram
```sh
# Any valid sh here to emit something in the form of
# <minx> <miny> <maxx> <maxy> "$id"
```
