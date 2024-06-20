#!/bin/bash

source ./functions.sh

read -p "Enter the first number : " n1
read -p "Enter the second number : " n2


echo "The result of sum is $(sum $n1 $n2)"
echo "The result of sub is $(sub $n1 $n2)"

