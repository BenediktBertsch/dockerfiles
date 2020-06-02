# Node-Base
FROM node:latest AS build

# ENV
ENV password="password"

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

# copy and run custom script
COPY /code-server/custom.sh /
RUN chmod +x /custom.sh \
	/custom.sh

# start code-server
CMD [ "code-server", "--auth ${password}", "/workspace" ]

# Port Exposing
EXPOSE 8080