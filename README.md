# About

A simple package that makes a blurry i3lock screen, but now with neofetch!

# Decencies

* i3lock
* neofetch
* scrot
* imagemagick

# Note

It will **not** work for you if you run it out-of-the-box, you're going to
have to fiddle with the internal settings, mainly your neofetch commands (I
have it pointing to an image on file), and whatever terminal you use.

I also recommend adding this line to your i3.conf to make it look *much* better
(or even work, I forget if the "focus floating line was redundant or not)

    for_window [instance='lock'] floating enable; focus floating

I have compton command on there, but you can remove those or add whatever
composite manager you use. I like transparent terminals, but if I don't
want people reading my screen when I get up, that doesn't work lol.
