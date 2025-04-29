#!/bin/bash

export XDG_SESSION_TYPE=wayland

WALLPAPER_DIR="/home/yourusername/wallpapers"
SELECTED=$(ls "$WALLPAPER_DIR" | wofi --dmenu --prompt "Select Wallpaper")

if [ -n "$SELECTED" ]; then
    hyprctl hyprpaper preload "$WALLPAPER_DIR/$SELECTED"
    hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER_DIR/$SELECTED"
fi