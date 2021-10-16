#!/usr/bin/env sh

rm -r core 2> /dev/null
rm -r apps 2> /dev/null

mkdir -p core
mkdir -p apps
mkdir -p apps/deezer

\cp ~/.zshrc ./core
\cp ~/.profile ./core
\cp -r ~/.config/custom ./core
\cp -r ~/.config/kitty ./apps

\cp ~/.local/share/applications/deezer.desktop ./apps/deezer
