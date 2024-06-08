#!/bin/bash 
# this is a script check a free disk space on partition 
TRESHOLD=20

usage=$(df / | grep '/' | awk '{ print $5 }' | sed 's/%//g')

if [ $usage -gt $TRESHOLD ]; then
    echo "Disk Usage Space Above $TRESHOLD% , the current usage is $usage%"
else
    echo "Disk Usage Space Below $TRESHOLD% , the current usage is $usage%"

fi