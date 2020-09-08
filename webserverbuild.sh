#!/bin/bash

#Description: Webserverbuild.sh

#Author: Samuel

#Date: August 02 2019

yum install httpd -y
systemctl status httpd
systemctl enable httpd
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
cd /var/www/html
NAME=Samuel
CITY=Paris

echo "$NAME is an employee of Data Service"
echo "$NAME is a fan of a soccer team of the city of $CITY"
echo "this site was built via a script" >> index.html

