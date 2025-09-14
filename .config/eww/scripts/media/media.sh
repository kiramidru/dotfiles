#!/usr/bin/env bash

playerctl --player=spotify metadata --follow --format \
'{{title}}|{{artist}}|{{mpris:length}}' | \
while IFS="|" read -r title artist status length_us pos art; do

    length=$(( length_us / 1000000 ))

    # Download album art if remote
    if [[ $art == https://* ]]; then
        curl -s "$art" -o "$TMP_ART_TMP"
        mv "$TMP_ART_TMP" "$TMP_ART"   # atomic rename
        art="$TMP_ART"
    fi

    # Emit JSON for Eww
    echo "{\"title\":\"$title\",\"artist\":\"$artist\",\"length\":$length,\"art\":\"$art\"}"
done
