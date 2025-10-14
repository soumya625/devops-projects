#!/bin/bash

# Update and install Nginx
sudo apt update -y
sudo apt install nginx -y

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Remove default Nginx files
sudo rm -rf /var/www/html/*

# Clone website files from GitHub
cd /var/www/html
sudo git clone https://github.com/soumya625/static-website-nginx-aws.git .

# Restart Nginx
sudo systemctl restart nginx

