# Jenkins-Base
FROM debian:latest

# Update and install Jenkins + Docker
RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y && \
	apt-get install wget curl apt-transport-https ca-certificates gnupg-agent software-properties-common -y

RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN echo 'deb https://pkg.jenkins.io/debian binary/'  >> /etc/apt/sources.list \
	cat /etc/apt/sources.list
RUN apt-key fingerprint 0EBFCD88 
RUN	add-apt-repository \
   	"deb [arch=amd64] https://download.docker.com/linux/debian \
   	$(lsb_release -cs) \
   	stable" 

RUN apt-get update -y \
	apt-get install jenkins docker-ce docker-ce-cli containerd.io -y	

# Port Exposing
EXPOSE 8090