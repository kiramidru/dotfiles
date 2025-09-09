#!/usr/bin/env bash

print_status() {
    read state pct <<< $(acpi -b | awk -F'[,:%]' '{print $2, $3}' | sed 's/^ //')
    echo "[\"$state\", $pct]"
}

print_status

acpi_listen | while read -r _; do
    print_status
 done
