#!/usr/bin/env bash

dbus-monitor "interface='org.freedesktop.Notifications',member='Notify'" | while read -r line; do
    # Extract strings (title, body, icon)
    if [[ $line == *string* ]]; then
        # Basic parsing: strip quotes
        msg=$(echo "$line" | sed 's/^ *string "//;s/"$//')
        echo "[{\"title\":\"Notification\",\"message\":\"$msg\",\"icon\":\"info.svg\"}]"
    fi
done
