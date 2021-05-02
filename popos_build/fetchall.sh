#!/usr/bin/env sh

mkdir -p core
mkdir -p apps
\cp -r ~/.config/custom ./core/
\cp ~/.Xresources ./core/.Xresources
\cp -r ~/.config/rofi/ .
\cp ~/.zshrc ./core/

mkdir -p apps/todoist
\cp /opt/Todoist/icon.png ./apps/todoist
\cp ~/.local/share/applications/todoist.desktop ./apps/todoist/todoist.desktop

rm -r apps/kitty
\cp -r ~/.config/kitty ./apps
