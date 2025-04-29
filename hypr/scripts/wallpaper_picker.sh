# Select a wallpaper using wofi
SELECTED=$(find ~/Pictures/wallpapers -type f -name "*.jpg" -o -name "*.png" | wofi --dmenu --prompt "Välj bakgrund")

# If a wallpaper is selected, set it
if [ -n "$SELECTED" ]; then
    hyprctl hyprpaper preload "$SELECTED"
    hyprctl hyprpaper wallpaper "eDP-1,$SELECTED"
fi