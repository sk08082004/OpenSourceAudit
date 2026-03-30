#!/bin/bash

# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# --- Your software config directory (edit this) ---
SOFTWARE_NAME="MySoftware"
CONFIG_DIR="$HOME/.config/$SOFTWARE_NAME"

echo "======================================"
echo "      Directory Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------------"
echo "   Software Config Directory Check"
echo "--------------------------------------"

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "$CONFIG_DIR exists"
    echo "Permissions: $PERMS"
else
    echo "$CONFIG_DIR does not exist"
fi

echo "======================================"
