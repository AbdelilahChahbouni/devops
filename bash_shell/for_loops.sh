#!/bin/bash


#!/bin/bash

for i in {1..5}
do
    echo "Welcome $i times"
done


#Loop through a list of strings:


for name in Alice Bob Charlie
do
    echo "Hello $name!"
done

#Loop through files in a directory:


for file in /path/to/directory/*
do
    echo "Processing $file"
    # You can add commands to process each file here
done



#Bash also supports a C-style syntax for for loops:


for ((i = 1; i <= 5; i++))
do
    echo "Iteration $i"
done


#Loop through the output of a command:

for user in $(cut -d: -f1 /etc/passwd)
do
    echo "User: $user"
done


#You can also use nested loops, which are loops within loops:

for ((i = 1; i <= 3; i++))
do
    for ((j = 1; j <= 2; j++))
    do
        echo "i = $i, j = $j"
    done
done

#Important Tips

#Quoting variables: When using variables within loops, especially when dealing with filenames or strings with spaces, it’s important to quote the variables to prevent word splitting.



for file in /path/to/directory/*
do
    echo "Processing \"$file\""
done

#Using arrays: You can loop through arrays as well.


arr=("element1" "element2" "element3")

for element in "${arr[@]}"
do
    echo "$element"
done



