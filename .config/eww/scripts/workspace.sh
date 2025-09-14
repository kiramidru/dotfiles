#!/usr/bin/env bash
SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

while true; do
    socat - UNIX-CONNECT:"$SOCKET" | while read -r line; do
        # Match only lines starting with 'workspace>>'
        if [[ "$line" == "workspace>>"* ]]; then
            ws="${line#workspace>>}"   # strip prefix
            ws="$(echo "$ws" | xargs)" # trim whitespace
            echo "$ws"
        fi
    done
    sleep 0.2
done
