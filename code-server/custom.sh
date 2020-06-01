#!/bin/bash
if [ -f /dependencies/dependencies.sh]
    then 
        /dependencies/dependencies.sh 
    else 
        echo "Customfile does not exist" 
fi