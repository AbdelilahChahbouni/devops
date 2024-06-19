#!/bin/bash

file="config.txt"

while IFS="=" read -r key value
do 
    case $key in 
        "username") USERNAME="$value";;
        "password") PASSWORD="$value";;
        "port") PORT="$value";;
        "host") HOST="$value";;
    esac

done < "$file"

echo "USERNAME: $USERNAME"
echo "PASSWORD: $PASSWORD"
echo "PORT: $PORT"
echo "HOST: $HOST"




