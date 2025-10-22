#!/bin/bash
set -e

echo "🚀 Starting Dockerized Node.js Deployment..."

# Install Docker if not installed
if ! command -v docker &> /dev/null; then
  echo "🔧 Installing Docker..."
  sudo apt update -y
  sudo apt install docker.io -y
  sudo systemctl start docker
  sudo systemctl enable docker
fi

# Stop old container if running
sudo docker rm -f nodejs-docker-app || true

# Build Docker image
sudo docker build -t nodejs-docker-app .

# Run container on port 80
sudo docker run -d -p 80:3000 --name nodejs-docker-app nodejs-docker-app

echo " Deployment Successful!"
echo "Visit your EC2 Public IP in your browser to view the app."
