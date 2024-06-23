#!/bin/bash

while getopts "a:bc:" opt;
do
    case $opt in
        a)
        echo The value of a is ${OPTARG}
        ;;
        b)
        echo Welcome..
        ;;
        c)
        echo The value of c is ${OPTARG}
        ;;
        *)
        echo "Usage : [a b c] no options"
        ;;
    esac
done

#To skip all opts and start take args
shift $((OPTIND-1))
echo "Another argument : $1"
