#!/bin/sh

#Get screen size
root_geo=$(xwininfo -root | awk -F'[ +]' '$3 ~ /-geometry/ {print $4}')

#infinite loop
while :
do
  #Check if any window fills the screen
  win_fills=$(xwininfo -root -tree | grep ")  $root_geo+" | grep -v -e 'has no name' -e 'pcmanfm' -e 'ksnip' -e 'Forkgram' -e 'telegram-desktop')
  #If any window fills the screen hide polybar, otherwise show it
  if [ -z "$win_fills" ]
  then
      if ! pgrep -x "polybar" > /dev/null
      then
          echo "starting polybar"
          polybar -r example &
      fi
  else
      echo "killing polybar"
      pkill polybar
  fi
  sleep 1
done
