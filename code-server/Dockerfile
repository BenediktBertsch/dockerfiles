# Node-Base
FROM node:latest

# Mounting
VOLUME [/dependencies]
VOLUME [/config]
VOLUME [/workspace]

# Create Folders
RUN mkdir /dependencies && mkdir /config && mkdir /workspace && chmod 777 -R /dependencies && chmod 777 -R /config && chmod 777 -R /workspace

# Update
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y && \
	apt-get install curl -y

# Install
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Copy custom script
COPY /code-server/custom.sh /
RUN chmod +x /custom.sh 

# Start script
ENTRYPOINT [ "/custom.sh" ]

# Port Exposing
EXPOSE 8080