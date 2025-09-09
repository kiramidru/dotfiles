#!/usr/bin/env bash

SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

# Listen to workspace events
socat - UNIX-CONNECT:"$SOCKET" | while read -r line; do
    # Only care about workspace changes
    if [[ $line == workspace* ]]; then
        # Extract workspace number
        workspace="${line#workspace>>}"
        # Update EWW
        eww -c ~/.config/eww-bar update active_workspace="$workspace"
    fi
done
