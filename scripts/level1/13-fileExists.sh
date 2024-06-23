#!/bin/bash

# using test
# test -f "./1-helloWorld.sh" && echo "File exists" || echo "File not exists"

if [ -f "./1-helloWorld.sh" ]
then 
echo "File exists"
else
echo "File not exists"
fi