# TODO Microservices Application Deployment
This repository contains the Terraform script infrastructure and ansible configurationfor setting up an ec2 instance and deploying a microservice application using docker compose.

🚀 Features
Multi-service TODO app (Frontend + Backend services)
Automated deployment using Terraform (Infrastructure as Code)
Server configuration and deployment with Ansible
Docker Compose for containerized microservices
Traefik as a reverse proxy with SSL using DuckDNS
📌 Prerequisites
Ensure you have the following installed on your local machine:

Terraform
Ansible
Docker & Docker Compose
AWS CLI configured with IAM credentials
A DuckDNS subdomain (e.g., todohngapp.duckdns.org)

📂 Project Structure


├── HNG12-Todos-Terraform/     # Terraform scripts for AWS infrastructure
│   ├── main.tf                # EC2 instance provisioning
│   ├── variables.tf           # Terraform variables
│   ├── terraform.tfvars       # AWS credentials & settings
│   ├── outputs.tf             # Output values (EC2 IP, etc.)
├── ansible/                   # Ansible playbooks for automation
│   ├── playbook.yml           # Main playbook
│   ├── inventory/
|   |   |── hosts              # Ansible inventory file
│   ├── roles/                 # Ansible roles
│   │   ├── dependencies/      # Install Docker, Docker Compose
│   │   ├── deployment/        # Deploy application
├── README.md                  # Project documentation
🛠️ Setup & Deployment
1️⃣ Provision AWS Infrastructure with Terraform
cd HNG12-Todos-Terraform

Write your script to create the resources and run the below
terraform init
terraform apply -auto-approve
Outputs: Terraform will display the EC2 public IP.

2️⃣ Configure & Deploy with Ansible
Once Terraform provisions the EC2 instance, update inventory/hosts with the instance IP and run:

cd ansible
ansible-playbook playbook.yml
This installs Docker, Docker Compose, Traefik, and deploys the application.

3️⃣ Access the Application
Once the deployment is complete, open your browser and visit:

https://todohngapp.duckdns.org
The application should be running with HTTPS enabled via Traefik.

📦 Docker & Traefik Setup
The application is deployed using Docker Compose, with Traefik as a reverse proxy.


