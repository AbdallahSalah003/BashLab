#!/bin/bash

<<COMMENTS
$0 name of the script invoked
$1-$9 stores the arguments 
$# stroes the number of args passed to the script
$* stores all the command line args by joining 1 2 3
$@ stores all the command line args as array 1, 2, 3
$$ stores the bash process id
$? stores the exit code of the last command
COMMENTS

echo "The current Invoked script name: $0"
echo "The first arg: $1"
echo "Number of passed args: $#"
echo "All args: $*"
echo "All args in array: $@"
echo "The current bash process ID: $$"
echo "The last command status: $?"
