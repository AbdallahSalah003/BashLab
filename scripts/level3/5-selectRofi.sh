#!/bin/bash

<<ROFI
A simple gui tool
also do powerful things
ROFI

values=$(cat /home/abdallah/Desktop/test.txt)

selected_value=`echo -e "${values[@]}" | rofi -dmenu -p "add/select"`
if [ "$selected_value" == "add" ]
then
    selected_value=$(echo -e "" | rofi -dmenu -p "path:")
    if [ -n "$selected_value" ]
    then
        printf "$selected_value\\n">>/home/abdallah/Desktop/test.txt
    fi
elif [ -n "$selected_value" ]
then
    echo "The User Select: \"$selected_value\""
    code "$selected_value"
fi