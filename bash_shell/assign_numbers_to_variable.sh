#!/bin/bash
#Method One
range=$(eval echo {1..5})
echo $range
for num in $range; {
    echo "number $num"
}

#Method Two

numbers=({1..10})
echo "numbers is ${numbers[@]}"

for num in ${numbers[@]}; {
    echo "number is $num"
}

#new Method 1

range=({1..5})

# Printing the range as a single string
echo "Range: ${range[*]}"

# Iterating over the range
for number in "${range[@]}"; do
  echo "Number: $number"
done

#new method 2
# Using eval to assign the expanded brace range to a variable
range=$(eval echo {1..5})

# Printing the range
echo "Range: $range"

# Iterating over the range
for number in $range; do
  ech

#=====================================
Key Points

    Arrays:
        Suitable when you need to handle each element individually.
        Uses the syntax range=({1..5}) and ${range[@]} for accessing elements.

    Eval:
        Useful when you want to expand braces directly into a string variable.
        Uses the syntax range=$(eval echo {1..5}).

Summary

Both methods have their own use cases and benefits. Arrays are more flexible for element-wise operations, while eval is useful for simple string assignments. Choose the method that best suits your needs for the specific task in your shell script.
#============================






