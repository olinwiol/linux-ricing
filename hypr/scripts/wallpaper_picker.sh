#!/bin/bash

# Select a wallpaper using wofi
SELECTED=$(find ~/wallpapers -type f \( -iname "*.jpg" -o -iname "*.png" \) | wofi --dmenu --prompt "Välj bakgrund")

# If a wallpaper is selected, set it
if [ -n "$SELECTED" ]; then
    hyprctl hyprpaper wallpaper "eDP-1,$SELECTED"
fi
