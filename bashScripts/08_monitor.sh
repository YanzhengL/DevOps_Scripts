#!/bin/bash

echo "#####################################################"
date 
# ls /var/run/httpd/httpd.pid &> /dev/null

if [ -f /var/run/httpd/httpd.pid ]
# ！EXPRESSION	The EXPRESSION is false.
# -n STRING	The length of STRING is greater than zero.
# -z STRING	The lengh of STRING is zero (ie it is empty).
# STRING1 = STRING2	STRING1 is equal to STRING2
# STRING1 != STRING2	STRING1 is not equal to STRING2
# INTEGER1 -eq INTEGER2	INTEGER1 is numerically equal to INTEGER2
# INTEGER1 -gt INTEGER2	INTEGER1 is numerically greater than INTEGER2
# INTEGER1 -lt INTEGER2	INTEGER1 is numerically less than INTEGER2
# -d FILE	FILE exists and is a directory.
# -e FILE	FILE exists.
# -r FILE	FILE exists and the read permission is granted.
# -s FILE	FILE exists and it's size is greater than zero (ie. it is not empty).
# -w FILE	FILE exists and the write permission is granted.
# -x FILE	FILE exists and the execute permission is granted.
then
   echo "Httpd process is running."
else
   echo "Httpd process is NOT Running."
   echo "Starting the process"
   systemctl start httpd 
   if [ $? -eq 0 ]
   then
      echo "Process started successfully."
   else
      echo "Process Starting Failed, contact the admin."
   fi
fi
echo "#####################################################"
echo 
