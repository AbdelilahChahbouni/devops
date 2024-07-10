#!/bin/bash
file_name="user_data.csv"


if [ ! -f $file_name ] 
then
	echo "Username,Fullname" > $file_name
fi

while true
do
	
	read -p "UserName: " username
	read -p "FullName: " fullname

	echo "$username,$fullname" >> $file_name
	echo "Data has been written to $file_name"
	read -p "do you want to enter another record [yes/no]" input
	if [[ "$input" == "no" ]]
	then
		echo "Stoping data entry"
		break
	fi


done

echo "all data has been written in csv file By"



