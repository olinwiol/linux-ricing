#!/bin/bash

SCRIPTS=$(find ~/wallpapers -name "*.sh" | sort)
SELECTED=$(echo "$SCRIPTS" | wofi --dmenu --prompt "Välj bakgrund")

if [ -n "$SELECTED" ]; then
    bash "$SELECTED"
fi