#!/bin/bash


#Description: Daemon Operation

#Author: Samuel

#Date: 08/2020

echo "Make your choice"
echo "1- stop "
echo "2- start"
echo "3- restart "
echo "4- reload "

read c

case $c in
1)systemctl stop httpd;;
2)systemctl start httpd;;
3)systemctl restart httpd;;
4)systemctl reload httpd;;
*)
echo "Invalid choice!!!"
echo "pleae choose between 1234 "
exit;;

esac

