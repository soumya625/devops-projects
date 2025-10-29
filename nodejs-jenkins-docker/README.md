Node.js App with Docker + Jenkins CI/CD Pipeline

## Project Overview
This project demonstrates a **complete DevOps workflow** using Node.js, Docker, and Jenkins.  
It automates building, containerizing, and deploying a Node.js web application.

## Project Structure

nodejs-jenkins-docker/
├── Dockerfile 
├── package.json 
├── server.js 
├── Jenkinsfile 
└── README.md


## Features
- Node.js web application using Express.js  
- Dockerized application for easy deployment  
- Jenkins CI/CD pipeline for automated build and deployment  
- Accessible via EC2 public IP in browser  

## Requirements
- EC2 Ubuntu instance  
- Docker installed on EC2  
- Jenkins installed and configured  
- Open ports: 22 (SSH), 80 (HTTP), 3000 (Custom TCP)  

## Steps to Run
1. SSH into EC2:
   ```bash
   ssh -i <your-key.pem> ubuntu@<EC2-public-ip>

2. Clone the repository:

git clone https://github.com/<your-username>/nodejs-jenkins-docker.git
cd nodejs-jenkins-docker


3. Build Docker image manually (optional):

sudo docker build -t nodejs-jenkins-app .


4. Run container (optional if using Jenkins pipeline):

sudo docker run -d -p 3000:3000 --name nodejs-docker-app nodejs-jenkins-app


5. Access in browser:

http://<EC2-public-ip>:3000


6. Or run via Jenkins pipeline (automatic):

Create pipeline job

Set SCM GitHub repo URL

Script path: Jenkinsfile

Click Build Now



--> How it Works

Jenkins pulls code from GitHub

Docker builds an image from Dockerfile

Docker container runs Node.js app

App is accessible on EC2 public IP


->>>> Key Learning Points

Creating Dockerfile for Node.js apps

Running Docker containers on EC2

Automating CI/CD using Jenkins pipeline

Exposing container ports and accessing web app



