# 🌐 Static Website Deployment using Nginx on AWS EC2

## =>> Project Overview
🚀 Static Website Deployment using Nginx on AWS EC2
Automated deployment of a static HTML website using Nginx on an AWS EC2 Ubuntu instance. Includes a Bash script for end-to-endsetup, configuration, and hosting.

Skills:AWS EC2|Nginx|Linux|Bash Scripting|Git|Cloud Deployment

The website files (HTML/CSS) are deployed on the EC2 instance, and Nginx serves them to the public.


## =>>Tools & Technologies
- AWS EC2 (Ubuntu 22.04)
- Nginx Web Server
- Git & GitHub
- Linux Commands

## =>>Steps to Recreate

### 1. Launch an EC2 Instance
- Instance type: `t2.micro` (Free Tier)
- Security group:
  - HTTP (port 80)
  - SSH (port 22)

### 2. Connect to the Instance
Using MobaXterm or SSH:
```bash
ssh -i <your-key>.pem ubuntu@<your-ec2-public-ip>

### 3. Install Nginx

sudo apt update
sudo apt install nginx -y
sudo systemctl start nginxi
sudo systemctl enable nginx

Verify:

sudo systemctl status nginx

### 4. Deploy the Website

Remove default files:

sudo rm -rf /var/www/html/*

Clone your repository:

cd /var/www/html
sudo git clone https://github.com/<your-username>/static-website-nginx-aws.git .

### 5. Test in Browser

Visit:

http://<your-ec2-public-ip>

✅ You should see your HTML page served by Nginx.

 Example Output

Hello from Nginx on AWS!
This website is deployed on an EC2 instance.


---

🧾 Automation Script (Optional)

You can automate installation using scripts/setup-nginx.sh:

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
sudo git clone https://github.com/<your-username>/static-website-nginx-aws.git .

# Restart Nginx
sudo systemctl restart nginx


Run:

chmod +x setup-nginx.sh
./setup-nginx.sh

*************************************************

 Learning Outcome

1.Understood how web servers (Nginx) host websites

2.Practiced Linux commands and server management

3.Deployed code from GitHub to AWS EC2

4.Gained real-world DevOps deployment experience
