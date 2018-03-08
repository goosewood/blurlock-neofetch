!/bin/bash

# Overlays neofetch stats on a blurred lock screen
# Dependencies: neofetch, terminal (set for urxvt, but easily changed), scrot, ImageMagik, i3lock
# Have it toggle compton off, then back on bc if you can see the screen through the lock blur, it's kinda pointless

killall compton
urxvt +sb -name lock -e neofetch --source ~/Images/Fem/qt.jpg --scrot_cmd 'scrot -z -u -d 0 /tmp/lock.png' -s & sleep 1.7; kill $!
compton -b & sleep .3
ICON=/tmp/lock.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -blur 0x10 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
