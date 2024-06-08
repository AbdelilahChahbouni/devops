#!/bin/bash
#
#this is a script check the connectivity of network

if curl -s --head --request Get $url | grep "200 ok" > /dev/null; then
    echo "the Network is up able to reach $url"
else 
    echo "the network is down or the $url not reachable "

fi 