#!/bin/bash

read -p "Enter number : " num

if [ $num -le 10 ] 
then 
echo "The number is less than or equal 10"
elif [ $num -le 20 ]
then
echo "The number is less than or equal 20"
else
echo "The number is greater than 20"
fi
