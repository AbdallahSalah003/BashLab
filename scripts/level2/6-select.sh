#!/bin/bash

select name in Ali Abdallah Amr
do
    case $name in 
    Ali)
    echo "Hello, $name"
    ;;
    *)  
    break
    ;;
    esac
done