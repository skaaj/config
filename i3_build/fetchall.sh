#!/usr/bin/env sh

mkdir -p i3
mkdir -p polybar
mkdir -p picom
mkdir -p misc
\cp ~/.i3/config ./i3/config
\cp ~/.config/polybar/* ./polybar/
\cp ~/.Xresources ./misc/Xresources
\cp ~/.config/picom/picom.conf ./picom/picom.conf
\cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf ./misc/50-mouse-acceleration.conf
