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

echo " checking if user deploy exist..."
sleep 5
grep deploy /etc/passwd

if
[ $? -eq 0 ]
then
echo "User deploy exist..."
else
echo "User deploy does not exist..."
fi
echo "Checking if group deploy exist..."
sleep 5
grep deploy /etc/group

if
[ $? -eq 0 ]
then
echo "group deploy exist..."
else
echo " group deploy does not exist..."
fi
echo "Checking what the selinux is set to..."
sleep 5
cat /etc/selinux/config | grep ^SELINUX= |awk -F"=" '{print$1" is set to " $2}'


