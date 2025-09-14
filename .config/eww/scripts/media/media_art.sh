#!/usr/bin/env bash

TMP_DIR="$HOME/.cache/eww"
mkdir -p "$TMP_DIR"
TMP_ART="$TMP_DIR/spotify_art.png"
TMP_ART_TMP="$TMP_DIR/spotify_art_tmp.png"

playerctl --player=spotify metadata --follow --format '{{mpris:artUrl}}' | while read -r art; do

    # Only download if it's a remote URL
    if [[ $art == https://* ]]; then
        curl -s "$art" -o "$TMP_ART_TMP"
        mv "$TMP_ART_TMP" "$TMP_ART"  # atomic rename
        art="$TMP_ART"
    fi

    # Output only the path
    echo "$art"
done
