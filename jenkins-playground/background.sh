#!/bin/bash

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian/jenkins.io-2023.key;

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null;

sudo apt-get update
sudo apt-get -y install fontconfig openjdk-17-jre
sudo apt-get -y install jenkins

sudo systemctl enable --now jenkins