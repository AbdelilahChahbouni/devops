#!/bin/bash

# system monitring script

# objects of this script
# Collect data on CPU usage, memory usage, disk usage, and network statistics.
# Log the collected data to a file.
# Send an email alert if any resource usage exceeds a specified threshold.


get_cpu_usage(){
	cpu_usage=$(top -bn1 | grep "Cpu(s)" | \
            sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
            awk '{print 100 - $1"%"}')
	echo $cpu_usage

}


get_usage_memory(){

	total_mem=$(free -m | awk 'NR==2{print $2}')
	used_mem=$(free -m | awk 'NR==2{print $3}')

	usage_memory=$(awk "BEGIN {printf \"%.2f\", ($used_mem/$total_mem)*100}")
	echo "$usage_memory %"

}

get_usage_memory

#get_cpu_usage




