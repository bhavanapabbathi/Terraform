Terraform AWS EKS Cluster

Overview
This project demonstrates how to provision an Amazon EKS (Elastic Kubernetes Service) cluster using Terraform.
The infrastructure is created using Infrastructure as Code (IaC) principles and follows AWS best practices for networking, security, and scalability.
The setup includes an EKS control plane, managed node groups, and VPC networking required to run Kubernetes workloads on AWS.

Architecture Overview

The EKS cluster is deployed with the following components:
Amazon VPC
Public and private subnets
DNS support enabled
Amazon EKS Cluster
Managed Kubernetes control plane
IAM integration for authentication
EKS Managed Node Groups
EC2 worker nodes
Auto-scaling enabled
IAM Roles & Policies
Required permissions for EKS and worker nodes
Security Groups
Controlled access between control plane and nodes

Technologies Used
AWS
EKS
EC2
VPC
IAM
Terraform
kubectl
AWS CLI

📋 Prerequisites

Before deploying this project, ensure you have:
An active AWS account
AWS Access Key & Secret Key configured
Terraform installed
AWS CLI installed
kubectl installed
Basic understanding of Kubernetes and AWS networking

📂 Project Structure
.
├── main.tf              # EKS cluster configuration
├── vpc.tf               # VPC and subnet configuration
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── versions.tf          # Provider and Terraform versions
└── README.md            # Documentation

🚀 Deployment Steps
1️⃣ Configure AWS Credentials
Ensure AWS credentials are configured:
aws configure

2️⃣ Initialize Terraform
Initializes the working directory and downloads required providers.
terraform init

3️⃣ Review the Execution Plan
Shows what resources Terraform will create.
terraform plan

4️⃣ Apply the Configuration
Creates the EKS cluster and related resources.
terraform apply
