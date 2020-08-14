# Jenkins-Base
FROM jenkins/jenkins:alpine as base

# Update and install Jenkins + Docker
USER root
RUN apk add --update docker openrc
RUN rc-update add docker boot
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers \
      && printf '#!/bin/bash\nsudo /usr/bin/docker "$@"' > /usr/local/bin/docker \
      && chmod +x /usr/local/bin/docker
USER jenkins

VOLUME /var/jenkins_home
VOLUME /var/run/docker.sock

# Port Exposing
EXPOSE 8080