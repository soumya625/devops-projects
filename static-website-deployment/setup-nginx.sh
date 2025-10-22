#!/bin/bash
#Simple script to install and start Nginx on Ubuntu EC2

set -e 
echo "Installing Nginx..."

# Update and install Nginx
sudo apt update -y
sudo apt install nginx -y

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Restart Nginx
sudo systemctl status nginx | grep Active

echo "Nginx installed and running successfully"
