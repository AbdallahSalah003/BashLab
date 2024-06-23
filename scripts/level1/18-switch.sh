#!/bin/bash

echo "Do you know me ?"
read -p "Answer is: " Answer

case $Answer in 
YES|yes|Yes|yEs|yeS|YEs|YeS|yES)
echo "Hello World"
;;
NO|no|No|nO)
echo "Opss.."
;;
*)
echo "Default"
;;
esac