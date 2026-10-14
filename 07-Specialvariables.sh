#!/bin/bash


### Speacial variables###

echo "All args passed to the script : $@"

echo "no of arguments passed to the script: $#"
echo "First variable passed: $1"
echo "Script name: $0"
echo "Realpath: $(realpath $0)"
echo "who is running the script : $USER"