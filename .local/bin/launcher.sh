#!/bin/sh

rofi -dpi $(xrdb -query | grep dpi | sed "s/[^0-9]//g") -no-lazy-grab -show drun -modi drun -theme ~/.config/rofi/launchers/misc/kde_simplemenu.rasi
