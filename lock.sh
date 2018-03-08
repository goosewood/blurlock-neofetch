!/bin/bash

# Overlays neofetch stats on a blurred lock screen

# Turns composite off
killall compton

# makes the neofetch, and scrots it (delay there for proccesing, change it to your pc's speed)
urxvt +sb -name lock -e neofetch -source ~/Images/Fem/qt.jpg --scrot_cmd 'scrot -z -u -d 0 /tmp/lock.png' -s & sleep 1.7; kill $!

# turns compton back on, and waits a sec (again, just giving it a sec to load)
compton -b & sleep .3

# Define image locations
ICON=/tmp/lock.png
TMPBG=/tmp/screen.png

# takes a screenshot
scrot /tmp/screen.png

# blurs it and overlays 
convert $TMPBG -blur 0x10 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG

# actually locks it
i3lock -u -i $TMPBG
