#!/bin/bash
set -e

rm -rf hypr wofi waybar Wallpapers gtk-3.0 gtk-4.0 helix || true

cp ~/.wezterm.lua                .wezterm.lua
cp ~/.zshenv                     .zshenv 
cp ~/.zshrc                      .zshrc
cp -r ~/.config/hypr             hypr
cp -r ~/.config/helix            helix
cp -r ~/.config/wofi             wofi
cp -r ~/.config/waybar           waybar
cp -r ~/Wallpapers               Wallpapers
cp -r ~/.config/gtk-4.0          gtk-4.0
cp -r ~/.config/gtk-3.0          gtk-3.0