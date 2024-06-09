#!/bin/bash

read -p "Enter Your Age : " age

if [[ $age =~ ^[0-9]+$ ]]; then
    echo "Your Age is $age"
else 
    echo "Enter the Number ; "

fi

