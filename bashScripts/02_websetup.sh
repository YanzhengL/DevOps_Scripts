#!/bin/bash

#Installing Dependencies
echo “##################################”
echo "Installing Dependencies"
echo “##################################”
sudo yum install wget unzip httpd -y > /dev/null


#Start & Enbale Service

echo "Start & Enbale service"
echo “##################################”
sudo systemctl start httpd
sudo systemctl enable httpd
echo

#Creating Temp Derectory

echo “##################################”
echo "Starting Artifact Deployment"

mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html
echo

# Bounce Service

echo “##################################”
echo "Restarting HTTPD service"

echo “##################################”
systemctl restart httpd
echo

# Clean up

echo “##################################”
echo "Removing Temporary Files"

sudo yum install wget unzip httpd -y > /dev/null
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html/


