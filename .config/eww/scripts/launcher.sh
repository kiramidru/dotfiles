#!/usr/bin/env bash

if [[ "$(eww get notch_state)" == "$1" ]]; then
    eww update notch_state="home"
else
    eww update notch_state="$1"
fi
echo "$1"
