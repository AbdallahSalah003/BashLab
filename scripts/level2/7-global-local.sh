#!/bin/bash

name="Abdallah"

DispName()
{
    echo "Entered the function"
    name="Omar"
}
echo Before $name
DispName
echo After $name


#-----------------

str="Bash Lab"
DispStr()
{
    echo "Entered the function"
    local str="Shell Lab"
}
echo Before $str
DispStr
echo After $str 
