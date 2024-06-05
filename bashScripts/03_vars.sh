#!/bin/bash
# Variable Declaration
PACKAGE="httpd wget unzip"
SVR="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TEMPDIR="/tmp/webfiles"

#Installing Dependencies
echo “##################################”
echo "Installing Dependencies"
echo “##################################”
sudo yum install $PACKGE -y > /dev/null


#Start & Enbale Service

echo "Start & Enbale service"
echo “##################################”
sudo systemctl start $SVR
sudo systemctl enable $SVR
echo

#Creating Temp Derectory

echo “##################################”
echo "Starting Artifact Deployment"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* $TEMPDIR
echo

# Bounce Service

echo “##################################”
echo "Restarting HTTPD service"

systemctl restart $SVR
echo

# Clean up

echo “##################################”
echo "Removing Temporary Files"
rm -rf $TEMPDIR
echo

sudo systemctl status $SVR 
ls /var/www/html/


