#!/bin/bash

START_TIME=$(date +%s)

echo "script started executions at :$START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "execution completed at : $END_TIME"

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Total Time Taken= $(TOTAL_TIME)"