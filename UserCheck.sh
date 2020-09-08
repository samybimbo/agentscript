#!/bin/bash

#Description: Checking a User's Account

#Author: Samuel

#Date: 02/2020


echo "what is the username to check? "

read USERNAME

grep $USERNAME /etc/passwd

if

[ $? -eq- 0 ]

then

echo "The user $USERNAME exist on this system"

else

echo "The user  $USERNAME is non existant"

fi

