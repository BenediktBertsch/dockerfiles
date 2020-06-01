# Node-Base
FROM node:latest AS build

# ARG
ARG password=password

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

# run custom script
RUN if[ -f /dependencies/dependencies.sh] \
	then /dependencies/dependencies.sh \
	else echo "Customfile does not exist" fi

# start code-server
CMD code-server --auth ${password} /workspace

# Port Exposing
EXPOSE 8080