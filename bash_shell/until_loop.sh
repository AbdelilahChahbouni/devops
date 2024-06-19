#!/bin/bash


read -p "Enter The Number : " count

until [ $count -gt 5 ]
do 
    echo $count
    (( count++ ))
done

