#!/bin/bash

var1="Amr"
var2="Ali"

test $var1 = $var2 && echo "True" || echo "False"

# 001 , 1 are strings
test 001 = 1 && echo "True" || echo "False"
test 001 -eq 1 && echo "True" || echo "False"

