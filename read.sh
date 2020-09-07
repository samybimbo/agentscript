#!/bin/bash


echo " what is your name? "

read na

echo "what year were you born?"

read y

echo "what city are you from? "

read CITY

echo "what brought you to the store today?"
read R

if

[ -z ${na} ]
then
echo "Please enter a valid name "
exit 100

elif
[ -z ${y} ]
then

echo "please enter a valid date year"

exit 2
fi


echo "Hello ${na} you were born in ${y} , you live in ${CITY}  and the reason for coming here is ${R} "




