#!/bin/bash

batt=(`acpi -b`)
battery=${batt[3]::-1} # 100 or 93% or 4%,

tmp=`echo $battery | grep "%"`
if [ $? -eq 0 ]
then
    battery=${battery::-1}
fi

while [ true ]
do
    if [ $battery -le 110 ]
    then
        notify-send "Battary Percentage Below 50%"
        sleep 5
        acpi -a | grep "on"
        if [ $? -eq 0 ]
        then
            notify-send "Script Finish"
            break 
        fi
    fi
done
