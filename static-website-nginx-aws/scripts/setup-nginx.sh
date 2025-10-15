#!/bin/bash

# Update and install Nginx
sudo apt update -y
sudo apt install nginx -y

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Remove default Nginx files
sudo rm -rf /var/www/html/*

# Clone website files from GitHub (to /tmp first)
cd /tmp
sudo git clone https://github.com/<your-username>/static-website-nginx-aws.git

# Copy website files to Nginx web root
sudo cp -r static-website-nginx-aws/* /var/www/html/

# Fix permissions
sudo chmod -R 755 /var/www/html

# Restart Nginx
sudo systemctl restart nginx

