#!/bin/bash

read -p "Enter Your Username : " username
read -s -p "Enter Your Password : " password

echo -e "\nUsername : $username"
echo "Password : Hidden"


read -t 5 -p "Enter Your name You Have 5 second" name

if [ -z $name ]; then 
    echo "you didnt enter a name in time "
else
    echo "Hello , $name"
fi

