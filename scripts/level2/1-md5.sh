#!/bin/bash

if [ -z $1 -o -z $2 ]
then 
echo "Files are empty"
exit 0
fi 

file1=`md5sum $1`
file2=`md5sum $2`

echo "file one is $file1"
echo "file two is $file2"

IFS=' '
read -ra ADDR1 <<<$file1
read -ra ADDR2 <<<$file2

if [ ${ADDR1[0]} = ${ADDR2[0]} ]
then
echo "Same SHA"
else
echo "Different SHA"
fi