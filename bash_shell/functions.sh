#!/bin/bash

function say_hello {
    echo "hello $1"
}

great() {
    local name=$1
    echo "hello $name"
}

sum() {
    local num1=$1
    local num2=$2
    let res=num1+num2
    echo "$res"
}

sub(){
    let res=$1-$2
    echo "$res"
}

check_file(){
    file_name=$1
    if [ -e "$file_name" ];
    then 
        echo "the file $file_name is exists"
    else
        echo "the file $file_name is not exists"
    fi

}



#great "reda"
#say_hello $1
#sum 10 10
#sub 20 10
#check_file "config.t"






