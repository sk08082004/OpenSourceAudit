#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3" # e.g. httpd, mysql, vlc, firefox

# Check if package is installed
# Changed rpm to dpkg -l because WSL uses Ubuntu, as allowed by your PDF
if dpkg -l $PACKAGE &>/dev/null; then
 echo "$PACKAGE is installed."
 dpkg -s $PACKAGE | grep -E 'Version|License|Summary|Description'
else
 echo "$PACKAGE is NOT installed."
fi

# Add a case statement that prints a one-line
# philosophy note about the package based on its name
case $PACKAGE in
 httpd) echo "Apache: the web server that built the open internet" ;;
 mysql) echo "MySQL: open source at the heart of millions of apps" ;;
 python3) echo "Python: The language that democratized AI" ;;
 vlc) echo "VLC: Plays anything, built by students" ;;
 firefox) echo "Firefox: A nonprofit fighting for an open web" ;;
esac
