#!/bin/bash
# ENV
port=$PORT

# IP
ipv4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)

# Check folders
if [ ! -d /data/dependencies ]
    then 
        mkdir /data/dependencies && chmod -R 777 /data/dependencies
fi

if [ ! -d /data/config ]
    then 
        mkdir /data/config && chmod -R 777 /data/config
fi

if [ ! -d /data/workspace ]
    then 
        mkdir /data/workspace && chmod -R 777 /data/workspace
fi

# Check if dependencies script exists
if [ -f /data/dependencies/dependencies.sh]
    then 
        chmod 777 /data/dependencies/dependencies.sh && /data/dependencies/dependencies.sh
    else 
        echo "Customfile does not exist, generating..." && touch /data/dependencies/dependencies.sh && echo "#!/bin/bash" >> /data/dependencies/dependencies.sh
fi

# start Code-Server
code-server --bind-addr $ipv4:$port --config /data/config --user-data-dir /data/workspace
