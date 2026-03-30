#!/bin/bash

# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Do-while style retry if file is empty ---
RETRY=0
MAX_RETRY=3

while true; do
    if [ -s "$LOGFILE" ]; then
        break
    fi

    if [ $RETRY -ge $MAX_RETRY ]; then
        echo "File is still empty after $MAX_RETRY attempts. Exiting."
        exit 1
    fi

    echo "File is empty. Retrying in 2 seconds... ($((RETRY+1))/$MAX_RETRY)"
    sleep 2
    RETRY=$((RETRY + 1))
done

# --- Count keyword occurrences ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output result ---
echo "--------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------"

# --- Show last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "======================================"
