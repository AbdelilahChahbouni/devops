#!/bin/bash

file="test.txt"

sed '/^$/ d' $file > first_change.txt
sed -e 's/test/TEST/g' -e 's/this/THIS/g' $file > second_change.txt

echo "the Edite is Completed .."