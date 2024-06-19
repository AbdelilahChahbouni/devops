#!/bin/bash

read -p "Enter The Number : " num

while :
do 
    echo $num
    if [ $num == 20 ]
    then
        echo "End Of Loop .."
        break
    fi 
    (( num++ ))

done
