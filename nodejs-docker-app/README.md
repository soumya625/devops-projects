 Node.js App Deployment using Docker

--> Project Overview
This project demonstrates deploying a Node.js application inside a Docker container on AWS EC2, automated using a bash deploy script.  

The app is a simple Node.js server that displays:

🚀 Hello from Node.js + Docker project!

---

##  Project Structure

nodejs-docker-app/ 
 ├── server.js       # Node.js application
 ├── package.json    # Node.js dependencies and scripts
 ├── Dockerfile      # Docker image definition 
 └── deploy.sh       # Automation script to deploy container on EC2

---

##  Prerequisites

- AWS EC2 instance (Ubuntu)
- Docker installed (the script can auto-install Docker)
- Git (to clone repository)

---

## Deployment Steps

1. **Connect to your EC2 instance:**
```bash
ssh -i <your-key.pem> ubuntu@<EC2-IP>

2. Clone the repository:

git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>

3. Make deploy.sh executable:

chmod +x deploy.sh

4. Run the deploy script:

./deploy.sh



The script will:

->Install Docker if not present

->Remove any old container

->Build a fresh Docker image

->Run the container on port 80 (mapped from container port 3000)


5. Verify container is running:

sudo docker ps
sudo docker logs nodejs-docker-app

6. Open in browser:

http://<EC2-IP>

You should see:

🚀 Hello from Node.js + Docker project!


📦 Notes

If you make changes to server.js or package.json, re-run deploy.sh to rebuild and redeploy the container.

The script uses --no-cache Docker build to ensure fresh dependencies.

Express (if used) should be listed in package.json dependencies.

---

📝 Key Learnings

Dockerizing a Node.js app

Deploying Docker containers on AWS EC2

Automating deployment using a bash script
