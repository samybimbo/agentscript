#!/bin/bash

# Description: System Check

#Author: Samuel

#Date : 08/2020


function HELO {
echo "system check"
uptime
pwd
free -m
lsblk
uname -r
cat /etc/*release

}
HELO
~

