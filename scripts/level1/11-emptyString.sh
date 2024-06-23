#!/bin/bash

read -p "Enter input: " str

if [ -z $str ]
then 
echo "The string is empty"
else 
echo "The string is ${str}"
fi
