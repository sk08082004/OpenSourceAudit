#!/bin/bash 
# Script 1: System Identity Report 
# Author: Sunny| Course: Open Source Software 
# --- Variables --- 
STUDENT_NAME="Sunny" # Fill in your name 
SOFTWARE_CHOICE="python" # Fill in your chosen software 
# --- System info --- 
KERNEL=$(uname -r) 
USER_NAME=$(whoami) 
UPTIME=$(uptime -p) 
# --- Display --- 
echo "================================" 
echo " Open Source Audit — $Sunny" 
echo "================================" 
echo "Kernel : $KERNEL" 
echo "User : $USER_NAME" 
echo "Uptime : $UPTIME" 
# TODO: Add distro name, date, and license message
