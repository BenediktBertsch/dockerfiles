# Node-Base
FROM node:latest

# Mounting
VOLUME [/dependencies]
VOLUME [/config]
VOLUME [/workspace]

# Update
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y && \
	apt-get install curl -y

# install
RUN curl -fsSL https://code-server.dev/install.sh | sh

# copy custom script
COPY /code-server/custom.sh /
RUN chmod +x /custom.sh 

# start script
ENTRYPOINT [ "/custom.sh" ]

# Port Exposing
EXPOSE 8080