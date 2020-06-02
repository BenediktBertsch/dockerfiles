# Jenkins-Base
FROM debian:latest

# Update and install Jenkins + Docker
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y && \
	apt-get install wget curl apt-transport-https ca-certificates gnupg-agent software-properties-common gnupg2 docker.io openjdk-11-jdk-headless -y && \
	wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add - && \
	echo "deb https://pkg.jenkins.io/debian binary/"  >> /etc/apt/sources.list && \
	apt-get update -y && \ 
	apt-get install jenkins -y && \
	service jenkins start

# Port Exposing
EXPOSE 8090