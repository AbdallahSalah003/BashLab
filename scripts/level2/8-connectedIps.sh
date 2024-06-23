#!/bin/bash

network_prefix="192.168.1"

for i in {1..5}
do
    ip="${network_prefix}.${i}"
    ping $ip -c $1 -w $2 > "net.log"
    if [ $? -eq 0 ]
    then
        echo "Host $ip is up"
    else
        echo "Host $ip is down"
    fi 
done