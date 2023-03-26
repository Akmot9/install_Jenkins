#!/bin/bash

# This script installs Jenkins on an Ubuntu system

# Download and install the Jenkins repository key
if ! curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/jenkins.gpg; then
    echo "Error: Unable to download and install the Jenkins repository key"
    exit 1
fi

# Add the Jenkins repository to the apt sources list
if ! sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'; then
    echo "Error: Unable to add the Jenkins repository to the apt sources list"
    exit 1
fi

# Update the package index
if ! sudo apt update; then
    echo "Error: Unable to update the package index"
    exit 1
fi

# Install Jenkins
if ! sudo apt install -y jenkins; then
    echo "Error: Unable to install Jenkins"
    exit 1
fi

# Start the Jenkins service
if ! sudo systemctl start jenkins; then
    echo "Error: Unable to start the Jenkins service"
    exit 1
fi

# Enable the Jenkins service to start automatically at system boot
if ! sudo systemctl enable jenkins; then
    echo "Error: Unable to enable the Jenkins service to start automatically at system boot"
    exit 1
fi

echo "Jenkins installation completed successfully!"
