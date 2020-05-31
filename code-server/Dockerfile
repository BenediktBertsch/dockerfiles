# Node-Base
FROM node:latest AS build

# Update
RUN apt-get update -y \
	apt-get upgrade -y \
	apt-get install -y 

# install
curl -fsSL https://code-server.dev/install.sh | sh