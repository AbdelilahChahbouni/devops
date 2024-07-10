#!/bin/bash

CSV_FILE=user_data.csv
COUNTER=0
#check if the file exists
if [ ! -f $CSV_FILE ]
then
	echo "file not found"
	exit 1
fi

#check the prevlige 
if [ $UID -ne 0 ]
then
	echo "must run this script as root"
	exit 1
fi
# read data from the file
while IFS=, read -r username fullname
do
	# to skipe the first line in file
	if [ $COUNTER -eq 0 ]
	then
		COUNTER=$((COUNTER + 1))
		continue
	fi
	#check if the user exists
	if cat /etc/passwd | grep $username > /dev/null
	then	
		echo "the user $username is already exists"
	else 
		password=$(openssl rand -base64 12)
		useradd -m -c "$fullname" "$username"
		echo "$username:$password" | chpasswd
		chage -d 0 $username
		echo "the user $username and Password: $password created successfuly"
		echo "$username : $password" >> users_info.txt
		echo "*************************************************************"
	fi
	
done < "$CSV_FILE"


