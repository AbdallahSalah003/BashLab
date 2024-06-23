#!/bin/bash

while read line
do
    if [ -z $line ]
    then
        echo "Finished.."
    elif [ $line = Abdallah ]
    then
        echo "Hello, $line"
    else
        echo $line
    fi
done < $1