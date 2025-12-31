AWS Three-Tier Architecture Using Terraform

📌 Overview
This repository demonstrates how to deploy a three-tier architecture on AWS using Terraform. The architecture follows best practices for security, scalability, and high availability, leveraging Infrastructure as Code (IaC) to provision and manage AWS resources in a repeatable and automated way.
📋 Prerequisites
Before deploying this project, ensure you have:
An active AWS account
AWS Access Key and Secret Key
Terraform installed

🧱 Architecture Description
The infrastructure is divided into three logical layers:

1️⃣ Web Tier (Presentation Layer)
Hosted on EC2 instances
Deployed in public subnets
Accessible via an Application Load Balancer (ALB)
Handles incoming HTTP/HTTPS traffic

2️⃣ Application Tier
Deployed in private subnets
Isolated from direct internet access
Communicates only with the Web and Database tiers

3️⃣ Database Tier
Uses Amazon RDS (MySQL)
Deployed in private subnets
Configured with Multi-AZ for high availability
Accessible only from the Application tier

🛠️ Technologies Used
AWS
VPC
EC2
Application Load Balancer
RDS (MySQL)
Internet Gateway
Route Tables
Security Groups
Terraform
Shell Script (User Data)

Basic understanding of AWS networking and Terraform

📂 Project Structure
.
├── vpc.tf               # VPC configuration, # Internet Gateway, # Route tables and associations
├── subnet.tf            # Public and private subnets
├── ec2.tf               # EC2 instances (Web tier)
├── alb.tf               # Application Load Balancer
├── rds.tf               # RDS database configuration
├── web_sg.tf            # Security group for Web tier, # Security group for Database tier
├── vars.tf              # Input variables
├── outputs.tf           # Output values
├── data.sh              # User data script
└── README.md            # Project documentation

Initialize Terraform

Initializes the working directory and downloads required providers.
terraform init
2️⃣ Review Execution Plan
Generates a plan showing the resources that will be created.
terraform plan
3️⃣ Apply Configuration
Creates the AWS infrastructure.
terraform apply
AWS credentials are provided at runtime for security reasons.
🔍 Resources Created
Terraform provisions the following AWS resources:
Virtual Private Cloud (VPC)
Public and Private Subnets
Internet Gateway
Route Tables
Application Load Balancer
EC2 Instances
RDS MySQL Database
Security Groups
User Data-based Web Server Configuration

🌐 Accessing the Application
After successful deployment, Terraform outputs the DNS name of the Application Load Balancer.
Paste this DNS into a browser to verify that traffic is being distributed across multiple EC2 instances.
