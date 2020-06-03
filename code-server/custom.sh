#!/bin/bash
# ENV
port=$PORT

# Password
if [ -n "${PASSWORD}" ]; then
  AUTH="password"
else
  AUTH="none"
  echo "starting with no password"
fi

# IP
ipv4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)

# Check folders
mkdir -p /data/{extensions,data,workspace,dependencies}

# Check if dependencies script exists
if [ -f /data/dependencies/dependencies.sh ]
    then 
        chmod 777 /data/dependencies/dependencies.sh && /data/dependencies/dependencies.sh
    else 
        echo "Customfile does not exist, generating..." && touch /data/dependencies/dependencies.sh && echo "#!/bin/bash" >> /data/dependencies/dependencies.sh
fi

# start Code-Server
/usr/bin/code-server \
			--bind-addr 0.0.0.0:$port \
			--user-data-dir /data/data \
			--extensions-dir /data/extensions \
			--disable-telemetry \
            --auth "${AUTH}" \
			/data/workspace