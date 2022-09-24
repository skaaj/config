#!/usr/bin/env sh

mkdir -p core 2> /dev/null
mkdir -p apps 2> /dev/null
mkdir -p i3 2> /dev/null
mkdir -p polybar 2> /dev/null
mkdir -p picom 2> /dev/null
mkdir -p misc 2> /dev/null
mkdir -p rofi 2> /dev/null

\cp ~/.zshrc ./core
\cp ~/.profile ./core
\cp -r ~/.config/custom ./core
\cp -r ~/.config/kitty .
\cp -r ~/.config/rofi .
\cp ~/.config/i3/config ./i3/config
\cp ~/.config/i3status/config ./i3/i3status
\cp ~/.config/polybar/* ./polybar/
\cp ~/.Xresources ./misc/Xresources
\cp ~/.config/picom/picom.conf ./picom/picom.conf
\cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf ./misc/50-mouse-acceleration.conf
