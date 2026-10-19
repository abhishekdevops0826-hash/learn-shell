#!/bin/bash

var1=10
var2=20

echo "$var1+$var2"
echo "$(($var1+$var2))"

declare -i COUNT=5 # I am declaring as integer

COUNT=COUNT+1

echo "Count is:$COUNT"

FRUITS=("Apple" "Banana" "Papaya") 
echo "All fruits: ${FRUITS[@]}"