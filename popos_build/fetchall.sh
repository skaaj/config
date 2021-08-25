#!/usr/bin/env sh

rm -r core 2> /dev/null
rm -r apps 2> /dev/null

mkdir -p core
mkdir -p apps
mkdir -p apps/todoist
mkdir -p apps/deezer

\cp ~/.zshrc ./core
\cp ~/.profile ./core
\cp ~/.Xresources ./core
\cp -r ~/.config/custom ./core
\cp -r ~/.config/rofi ./apps
\cp -r ~/.config/kitty ./apps

\cp /opt/Todoist/icon.png ./apps/todoist
\cp ~/.local/share/applications/todoist.desktop ./apps/todoist

\cp ~/.local/share/applications/deezer.desktop ./apps/deezer

