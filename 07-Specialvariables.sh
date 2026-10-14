#!/bin/bash


### Speacial variables###

echo "All args passed to the script : $@"

echo "no of arguments passed to the script: $#"
echo "First variable passed: $1"
echo "Script name: $0"
echo "Realpath: $(realpath $0)"
echo "who is running the script : $USER"
echo "Directory of the current script:$PWD"
echo "Home directory of the current user:$HOME"
echo "PID of the current script: $$"

sleep 10 &

echo "PID of the command running in the background now:$!"
wait $! # script waits till $! command is complete
echo "line number:$LINENO"

echo "$?"
echo "previous command exit status:$?"
echo "Total time executed for this script:$SECONDS"