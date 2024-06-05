#!/bin/bash

### Print system info ###

echo "Welcome to bash script."
echo

#checking system uptime
echo "##################################3"
echo "The uptime of the system is："
uptime
echo

# Memory utilization
echo "#####################################"
echo "Memory Utiliation"
free -m
echo

# Disk Utilization
echo "Disk Utilization"
echo "##################################3"
df -h

