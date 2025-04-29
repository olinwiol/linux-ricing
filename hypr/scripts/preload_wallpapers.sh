# Path to your wallpaper directory
WALLPAPER_DIR="$HOME/wallpapers"

# Preload all wallpapers
for img in "$WALLPAPER_DIR"/*.{jpg,png,jpeg}; do
    if [ -f "$img" ]; then
        hyprctl hyprpaper preload "$img"
    fi
done
