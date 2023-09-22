#!/bin/bash
set -e


echo "To prevent accidental destruction of your system, edit install.sh to remove this warning."
exit 100

mkdir -p ~/.config
rm -rf ~/Wallpapers ~/.config/{hypr,wofi,waybar,gtk-3.0,gtk-4.0,helix} || true

cp .wezterm.lua     ~/.wezterm.lua
cp .zshenv          ~/.zshenv
cp .zshrc           ~/.zshrc
cp -r hypr          ~/.config/hypr
cp -r helix         ~/.config/helix
cp -r wofi          ~/.config/wofi
cp -r waybar        ~/.config/waybar
cp -r Wallpapers    ~/Wallpapers
cp -r gtk-4.0       ~/.config/gtk-4.0
cp -r gtk-3.0       ~/.config/gtk-3.0
