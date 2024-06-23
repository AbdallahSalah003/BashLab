#!/bin/bash
<<SCRIPT
this script shows the prayer times
SCRIPT


json_parser-usingBash() 
{
    res=`curl "https://api.aladhan.com/v1/timingsByCity/23-06-2024?city=Giza&country=Arab+Rebuplic+Egypt" | json_pp -f json`
    echo "Status Code is :"
    echo ${res} | jq '.code'
    echo ${res} | jq '.data.timings'
}

json_parser-usingBash
