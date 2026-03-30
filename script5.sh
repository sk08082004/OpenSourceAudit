#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose and write manifesto ---
echo "----------------------------------------" > "$OUTPUT"
echo "        Open Source Manifesto" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe in the power of open-source software and the value of $FREEDOM." >> "$OUTPUT"
echo "Using tools like $TOOL every day reminds me that collaboration and transparency drive innovation." >> "$OUTPUT"
echo "I aspire to build and share $BUILD so that others can learn, improve, and benefit freely." >> "$OUTPUT"
echo "Open source is not just code—it is a community, a philosophy, and a commitment to a better digital future." >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"

# --- Output result ---
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
