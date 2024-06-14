#!/bin/bash

read -p "Enter a day of the week (e.g Monday , Thuesday ):" day


case $day in 
     "Monday"|"Tuesday"|"Wednesday"|"Thursday"|"Friday")
        echo "It s a weekday"
        ;;
    "saturday"|"sunday")
        echo "It s a weekend"
        ;;
    *)
        echo "That not a valid day "
        ;;
esac

