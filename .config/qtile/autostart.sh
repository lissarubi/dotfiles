#! /bin/bash 
lxsession &
picom --experimental-backends &
nitrogen --restore &
urxvtd -q -o -f &
/usr/bin/emacs --daemon &
volumeicon &
nm-applet &
