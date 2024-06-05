#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then 
	echo "1 Active network Interface found."
elif [ $value -gt 1 ]
then 
	echo "Found multiple active interfaces"
else
 echo "No active interface found."
fi
