#!/bin/bash

# ENV
config='/config'
workspace='/workspace'

# IP
ipv4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)

# Check if dependencies script exists
if [ -f /dependencies/dependencies.sh]
    then 
        /dependencies/dependencies.sh 
    else 
        echo "Customfile does not exist" 
fi

# start Code-Server
code-server --bind-addr $ipv4 --config $config --user-data-dir $workspace
