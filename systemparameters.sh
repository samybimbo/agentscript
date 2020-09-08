#!/bin/bash

#Description: Systemparameters
#Author: Samuel
#Date: 08/2020
echo "The script is about to check your system paramters... Please wait..."
sleep 5
echo "checking the memomy..."
sleep 5
free -m |grep Mem |awk -F" " '{print$1$2}'
echo "Checking the number of CPU's..."
sleep 5
nproc
echo " Checking your hard drive..."
sleep 5
lsblk | grep ^sd | awk '{print$1 "==>" $4}'

echo "Checking if group wheel exist..."
sleep 5
grep wheel /etc/group
if
[ $? -eq 0 ]
then
echo "The group wheel exist..."
else
echo "The group Wheel does not exist..."
fi

