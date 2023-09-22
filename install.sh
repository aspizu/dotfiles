#!/bin/bash
set -e

mkdir -p ~/.config
rm -r ~/Wallpapers ~/.config/{hypr,wofi,waybar} || true

cp .wezterm.lua     ~/.wezterm.lua
cp .zshenv          ~/.zshenv
cp .zshrc           ~/.zshrc
cp -r hypr          ~/.config/hypr
cp -r wofi          ~/.config/wofi
cp -r waybar        ~/.config/waybar
cp -r Wallpapers    ~/Wallpapers