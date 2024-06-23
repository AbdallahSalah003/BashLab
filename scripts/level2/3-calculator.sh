#!/bin/bash

add()
{
    sum=$(($1 + $2))
    return $sum
}
sub()
{
    subt=$(($1 - $2))
    return $subt
}
multiply()
{
    mul=$(($1 * $2))
    return $mul
}
divide()
{
    if [ $2 -eq 0 ]
    then
        return -1
    fi
    div=$(($1 / $2))
    return $div
}
power()
{
    pow=$(($1 ** $2))
    return  $pow
}

read -p "Enter first number: " x
read -p "Enter second number: " y
echo "choose op: 1-add 2-sub 3-multiply 4-divide 5-power"
read op
case $op in
1)
add $x $y 
echo $?
;;
2)
sub $x $y
echo $?
;;
3)
multiply $x $y 
echo $?
;;
4)
divide $x $y 
if [ $? -eq 255 ]
then 
echo "NO Dviding by zero"
else
echo $?
fi
;;
5) 
power $x $y 
echo $?
;;
*)
echo "Wrong input"
esac