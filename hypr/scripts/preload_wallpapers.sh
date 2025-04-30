SOCKET="/run/user/1000/hypr/$(ls /run/user/1000/hypr | grep hyprpaper)/.hyprpaper.sock"

# Wait for the socket to exist (timeout after 5 seconds)
for i in {1..10}; do
    if [ -S "$SOCKET" ]; then
        break
    fi
    sleep 0.5
done

# Then set the wallpaper
hyprctl hyprpaper wallpaper "DP-1,/path/to/wallpaper.jpg"


# Path to your wallpaper directory
WALLPAPER_DIR="$HOME/wallpapers"

# Preload all wallpapers
for img in "$WALLPAPER_DIR"/*.{jpg,png,jpeg}; do
    if [ -f "$img" ]; then
        hyprctl hyprpaper preload "$img"
    fi
done
