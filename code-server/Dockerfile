# Node-Base
FROM node:latest

# Mounting
VOLUME [/data]

# Create Folders
RUN mkdir /data && chmod 777 -R /data

# Update
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y && \
	apt-get install curl -y

# Install
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Copy custom script
COPY custom.sh /
RUN chmod +x /custom.sh 

# Start script
ENTRYPOINT [ "/custom.sh" ]

# Port Exposing
EXPOSE 8080