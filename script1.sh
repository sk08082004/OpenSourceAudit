#!/bin/bash

# Script 1: System Identity Report
# Author: Your Name | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Arpan Mitra"
SOFTWARE_CHOICE="Python"   # Change as needed

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
DATE=$(date)

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Distro  : $DISTRO"
echo "Date    : $DATE"
echo "--------------------------------"
echo "License : This report is generated using open-source tools."
echo "================================"
