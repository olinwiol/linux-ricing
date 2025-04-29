#!/bin/bash

# Define your wallpaper directory
WALLPAPER_DIR="$HOME/wallpapers"

# Find all .jpg and .png files, strip the path, and pass to wofi
SELECTED=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | \
    sed 's|^.*/||' | wofi --dmenu --prompt "Choose Wallpaper")

# If a wallpaper is selected, set it
if [ -n "$SELECTED" ]; then
    # Get full file path
    FULL_PATH="$WALLPAPER_DIR/$SELECTED"
    
    # Set the wallpaper on your monitor (replace eDP-1 with your monitor name)
    hyprctl hyprpaper wallpaper "eDP-1,$FULL_PATH"
fi
