#!/bin/bash

read -p "Enter the Process Name : " PROCESS

if pgrep $PROCESS > /dev/null; then
    echo "The Process $PROCESS is Running.. "
else 
    echo "The Process $PROCESS is Not Running.."
fi