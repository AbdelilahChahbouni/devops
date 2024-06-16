#!/bin/bash

for n in {1..20}
do 
    if [ $n -eq 10 ] || [ $n -eq 15 ]
    then
        echo "the nmuber is 10 or 15"
        break
    fi

    echo "the number is : $n"

done