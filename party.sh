#!/bin/bash

#Description: Guests Sitting
#Author: Samuel
#Date: August 2020

 echo "What country are you from ? "
 read COUNTRY
 echo "How old are you? "
 read AGE

 if [ $AGE -gt 85 ] ; then
      echo "Please follow the senior citizen  table direction"
      exit
 elif  [ $COUNTRY = cameroon ] && [ $AGE -lt 21 ] ; then
      echo "Please follow $COUNTRY table1 direction "
      exit
 elif [ $COUNTRY = cameroon ] && [ $AGE -gt 20 ] ; then
      echo "Please follow $COUNTRY table2 direction "
      exit
 elif  [ $COUNTRY = nigeria ] && [ $AGE -lt 21 ] ; then
      echo "Please follow $COUNTRY table1 direction "
      exit
 elif [ $COUNTRY = nigeria ] && [ $AGE -gt 20 ] ; then
      echo "Please follow $COUNTRY table2 direction "
      exit
 elif  [ $COUNTRY = togo ] && [ $AGE -lt 21 ] ; then
      echo "Please follow $COUNTRY table1 direction "
      exit
 elif [ $COUNTRY = togo ]  && [ $AGE -gt 20 ] ; then
      echo "Please follow $COUNTRY table2 direction "
      exit
fi

