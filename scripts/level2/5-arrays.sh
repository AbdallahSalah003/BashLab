#!/bin/bash

ARR=( "Java" "Py" "CPP" 1 2 3)

#Print the hole array
echo ${ARR[@]}

#override value
ARR[0]="JavaScript"
echo ${ARR[0]}


#length
echo "len is : ${#ARR[@]}"


#delete element
unset ARR[2]
echo ${ARR[@]}
echo ${ARR[2]} #is empty no auto shift
#all elements will save their intial index before deleting


#slice the array
ARR2=( "Ali", "Amr", "Gamal", "Osama")
echo ${ARR2[@]}
SLICED_ARR=(${ARR2[@]:1:3});
echo ${SLICED_ARR[@]};

for i in "${!ARR2[@]}"
do
echo "$i - ${ARR2[$i]}"
done