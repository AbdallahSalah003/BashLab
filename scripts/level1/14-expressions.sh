#!/bin/bash

read -p "Enter x: " x
read -p "Enter y: " y
z=$(expr $x + $y)
echo "The sum of x and y is: $z"

echo "Increment x by 1 .. "
((x++))
echo "x now is: $x"

let var1=$x+$y
echo "Using let sum now is: $var1"

echo "Multiply x by y: $(($x * $y))"

echo "Power x^y : $(($x ** $y))"

