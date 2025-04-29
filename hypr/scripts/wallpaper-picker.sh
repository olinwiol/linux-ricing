#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"
SELECTED=$(ls "$WALLPAPER_DIR" | wofi --dmenu --prompt "Select Wallpaper")

if [ -n "$SELECTED" ]; then
    hyprctl hyprpaper preload "$WALLPAPER_DIR/$SELECTED"
    hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER_DIR/$SELECTED"  # replace eDP-1 with your monitor name
fi
