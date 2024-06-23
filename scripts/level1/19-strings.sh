#!/bin/bash

<<STRINGS
string equals string
greater than
Empty
length of string
wc
split
STRINGS

str1="thisisnicescript"
str2="thisisscript"

if [ $str1 = $str2 ]
then
echo "Equal Strings"
elif [ $str1 != $str2 ]
then
echo "Strings are matched"
else 
echo "Oopss.."
fi

if [ $str1 \< $str2 ]
then
echo "str1 is greater"
elif [ $str1 \> $str2 ]
then
echo "str2 is greater"
fi

# -z true for empty string
if [ -n $str1 ]
then
echo "str1 is not empty"
else
echo "str1 is empty"
fi

len=${#str1}
echo "The length of str1 is $len"


<<WC
wc    -> #lines #words #lines
wc -l -> #lines
WC


len2=`echo $str2 | wc -c`
echo "Length of str2 is $len2"


<<SPLIT
IFS variable is for delimiter
read -ra arr <<<"$str" 
reads str as an array as tokens separated by IFS
SPLIT

str="I'm Here In The Room"
IFS=', '
read -ra arr <<<"$str"
echo "First element: ${arr[0]}"

for i in "${arr[@]}"
do
echo "$i"
done

echo using syntax {str:x:y}
str3=${str:3:8}
echo $str3