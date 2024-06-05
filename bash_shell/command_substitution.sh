#!/bin/bash
echo "the script start "
start_date=$(date +%s)

sleep 3

end_time=$(date +%s)

echo "the script take time $(( end_time - start_date )) sec"

