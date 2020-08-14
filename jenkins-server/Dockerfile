# Jenkins-Base
FROM jenkins/jenkins::alpine

# Update and install Jenkins + Docker
USER root
RUN apk upgrade --update
RUN apk add openrc --no-cache
RUN apk add docker
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

VOLUME /config

# Port Exposing
EXPOSE 8080