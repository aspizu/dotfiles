#!/bin/bash
set -e

rm -r hypr wofi waybar Wallpapers || true

cp ~/.wezterm.lua                .wezterm.lua
cp ~/.zshenv                     .zshenv 
cp ~/.zshrc                      .zshrc
cp -r ~/.config/hypr             hypr
cp -r ~/.config/wofi             wofi
cp -r ~/.config/waybar           waybar
cp -r ~/Wallpapers               Wallpapers



