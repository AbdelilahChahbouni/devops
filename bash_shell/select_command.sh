#!/bin/bash
echo "chose You Operation : "
select op in add divide multiply sub quit
do 
    
    case $op in
        "add")
            read -p "Enter First Number : " n1
            read -p "Enter Second Number : " n2
            echo "$n1 + $n2 = $(( $n1+$n2 ))"
            ;;
        "divide")
            read -p "Enter First Number : " n1
            read -p "Enter Second Number : " n2
            echo "$n1 / $n2 = $(( $n1/$n2 ))"
            ;;
        "multiply")
            read -p "Enter First Number : " n1
            read -p "Enter Second Number : " n2
            echo "$n1 * $n2 = $(( $n1*$n2 ))"
            ;;
        "sub")
            read -p "Enter First Number : " n1
            read -p "Enter Second Number : " n2
            echo "$n1 - $n2 = $(( $n1-$n2 ))"
            ;;
        "quit")
            break
            ;;
        *)
            echo "Invalid Operation Try Again .."
    esac

done

