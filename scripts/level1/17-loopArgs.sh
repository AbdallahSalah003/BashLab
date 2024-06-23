#!/bin/bash
i=0
args=("$@")
while [ $i -lt $# ];
do
echo "Arg: ${args[i]}"
i=$((i+1))
done

<<USING-FOR
size=$#
for(( i=0;i<$size;i++))
do
echo "Arg: ${args[i]}"
done
USING-FOR