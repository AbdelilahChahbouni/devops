#!/bin/bash

read -p "Enter the Name the File " file

if [ -e $file ]; then
    echo "the file is exists"
    read -p "what you want make whit this file : 1 check permission\n 2 delte\n 3 cat file" status
    if [ $status = 1 ]; then 
        if [ -x $file ]; then   
            echo "the file is excutable"
        else
            read -p "you want mak it excutable" response
            if [ $response = "yes" ]; then 
                chmod +x $file 
                echo "the fiel is excutable now"
            fi 
        fi
    elif [ $status = 2 ]; then
        rm $file 
        echo "the file is delted"

    elif [ $status = 3 ]; then 
        cat $file

    fi 
else 
    echo "the file is not exists"
    read -p "you want to craet it yes or no" res
    if [ $res = "yes" ]; then 
        touch $file 
        echo "the file is created"
    fi 

fi





