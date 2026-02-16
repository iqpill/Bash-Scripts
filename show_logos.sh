#!/bin/bash

# Display only the primary logo from each entry
fastfetch --list-logos | grep -oP '\d+\)\s+"\K[^"]+' | while read -r logo; do
    echo "=== Displaying: $logo ==="
    fastfetch --logo "$logo"
    echo ""
    read -p "Press Enter to continue to next logo..."
done
