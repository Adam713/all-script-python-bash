#!/bin/bash

#elif
a=$1
b=$2
#read -p " Enter Yor name > " $1 $2
if [ $1 -eq 0 ]
then
echo "yes"
elif [[ $2 -eq 2 ]]
then
echo "the second pos is $2"
  #statements
else
echo "no"
fi


<<a
a=$1
b=$2
#توفر الشرطين#
#read -p " Enter Yor name > " $1 $2
if [ $1 == "adam" -a $2 == "alazazi" ]
then
echo "yes"
else
echo "no"
fi

a

<<b
read -p " Enter Yor name > " name
#if [ $name == "adam" ]
if [ $name == "adam" -o $name == "adm" ]
then
echo "yes"
else
echo "no"
fi

b
