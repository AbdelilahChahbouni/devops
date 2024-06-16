#!/bin/bash

# declare array

my_arr=(one two three)

# print element by index

echo ${my_arr[1]}

# print all elemants

echo ${my_arr[@]}

# print size aff array

echo ${#my_arr[@]}


# print all index of elements in array

echo ${!my_arr[@]}


# add elements to array

my_arr+=(three)

# remove element from array

unset my_arr[2]


# assosiative array
declare -A my_asso_arr=()

declare -A new_arr=(
    ["one"]="1" ["two"]=2 ["three"]=3 
)


# add alement to assosiative array

my_asso_arr[one]=1
my_asso_arr[two]=2


# get element by key

echo ${my_asso_arr[one]}
echo ${my_asso_arr[two]}

# get all elemants

echo ${my_asso_arr[@]}

echo ${new_arr[@]}

# for loop over array
echo "Associative array elements:"
for key in "${!my_assoc_array[@]}"; do
  echo "$key: ${my_assoc_array[$key]}"
done

# for loop over normal array
my_array=("apple" "banana" "cherry")
echo "Indexed array elements:"
for element in "${my_array[@]}"; do
  echo $element
done
