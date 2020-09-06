#!/bin/bash

#Description: Logs Files Chmod

#Author: Samuel

#Date: 09/05/2020

FILE=$(find /var/log/*.log -mtime +14)

####echo $FILE

for f in $FILE
do chmod +x $f

done

