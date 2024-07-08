#!/bin/bash


time=$(date +%m-%d-%y_%H_%M_%S)
backup_file=$1
dest_file=/home/local-host/Desktop/Devops_course/course3/bash_scripting/bash_shell/project/backup
file_name=backup_file_$time.tar.gz
log_file="/home/local-host/Desktop/Devops_course/course3/bash_scripting/bash_shell/project/backup/LOG_FILE.log"


if [ -z "$backup_file" ]
	then 
		echo "please enter the directory name that you want to backup it " | tee -a "$log_file"
		exit 2
fi

if [ $? -ne 2 ]
	then
		if [ -f $file_name ]
		then
			echo "Error file $file_name already exists " | tee -a "$log_file"
		else
			tar -czvf "$dest_file/$file_name" "$backup_file"
			echo "Backup complete Successfuly : $dest_file/$file_name" | tee -a "$log_file"
		fi
fi


