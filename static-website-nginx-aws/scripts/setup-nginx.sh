#!/bin/bash

# Update and install Nginx
sudo apt update -y
sudo apt install nginx -y

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Remove default Nginx files
sudo rm -rf /var/www/html/*

# Clone website files to nginx root
sudo cp -r /home/ubuntu/static-website-nginx-aws/static-website-nginx-aws/websites/* /var/www/html/

#set permission so nginx can read 
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Restart Nginx
sudo systemctl restart nginx

