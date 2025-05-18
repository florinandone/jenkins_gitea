FROM docker.io/jenkins/jenkins:lts-jdk21

USER root
# Update package lists and install rsync
RUN apt-get update && \
    apt-get install -y rsync && \
    rm -rf /var/lib/apt/lists/*
    
USER jenkins
