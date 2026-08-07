# 🚀 Demo App - Production-Grade AWS DevOps Project

A production-inspired **3-tier web application** deployed on AWS using modern DevOps practices and Infrastructure as Code.

The application consists of:

- Frontend (Nginx)
- Backend (Node.js / Express)
- PostgreSQL Database
- AWS Infrastructure
- Docker Containers
- Terraform IaC
- Ansible Automation
- GitHub Actions CI/CD

---

## Project Highlights

- Infrastructure provisioned using Terraform
- Containerized application with Docker
- Automated deployments with Ansible
- CI/CD pipelines using GitHub Actions
- Secure AWS authentication with GitHub OIDC
- Amazon ECR for container image management
- HTTPS enabled using AWS ACM
- Route53 DNS integration
- Multi-environment deployment (Dev & Prod)
- Application Load Balancer with Target Groups
- Multi-AZ deployment architecture

---

## Architecture

```text
                 Internet
                     │
          https://<app_domain>
                     │
                     ▼
        Application Load Balancer
            HTTP → HTTPS (ACM)
                     │
          ┌──────────┴──────────┐
          ▼                     ▼
     App Instance 1       App Instance 2
     nginx + backend      nginx + backend
          │                     │
          └──────────┬──────────┘
                     ▼
                PostgreSQL
```

### Infrastructure Components

- AWS VPC
- Public Subnets across 2 Availability Zones
- Application Load Balancer
- AWS Certificate Manager (ACM)
- Route53 DNS
- Amazon Elastic Container Registry (ECR)
- EC2 Instances
- PostgreSQL Database
- GitHub Actions CI/CD
- GitHub OIDC Authentication

---

# Deployment Evidence

## Production Environment

Production deployment accessible over HTTPS.

**URL:** https://web.demo.sapanajoshi.com.np (won't work cause instances are terminated)

<img width="1417" height="599" alt="Screenshot 2026-07-30 003327" src="https://github.com/user-attachments/assets/3e030170-2bb2-4d23-8cab-13bb0ce8c3fa" />

---

## Development Environment

Development deployment provisioned using the same infrastructure pipeline.

**URL:** https://dev.demo.sapanajoshi.com.np (won't work cause instances are terminated)

<img width="1919" height="822" alt="Screenshot 2026-07-30 001316" src="https://github.com/user-attachments/assets/dc6b352f-5567-43ff-b2a2-41468a6ee16b" />

---

## Amazon ECR Repositories

Container images are automatically built and pushed to Amazon ECR through GitHub Actions.

Repositories created through Terraform:

- demo-app-dev-frontend
- demo-app-dev-backend
- demo-app-prod-frontend
- demo-app-prod-backend

<img width="1919" height="774" alt="Screenshot 2026-07-30 003517" src="https://github.com/user-attachments/assets/b09314a0-0c14-4954-9c4d-2fc42d4511ae" />


---

## AWS Certificate Manager (ACM)

TLS certificates issued and managed by AWS ACM for HTTPS communication.

Certificates issued for:

- web.demo.sapanajoshi.com.np
- dev.demo.sapanajoshi.com.np
- demo.sapanajoshi.com.np

<img width="1556" height="508" alt="Screenshot 2026-07-30 003547" src="https://github.com/user-attachments/assets/00db1f46-4092-41dd-8353-75b9f7fdd4aa" />


---

## Application Load Balancers

Separate Application Load Balancers provisioned for development and production environments.

Features:

- Internet-facing
- HTTPS termination
- ACM integration
- Multi-AZ deployment
- Traffic distribution
- Health checks

<img width="1609" height="355" alt="Screenshot 2026-07-30 003640" src="https://github.com/user-attachments/assets/0c916791-5899-43ec-9ded-2c6b44561fb7" />


---

## Target Groups

Target groups provisioned using Terraform and attached to the Application Load Balancers.

Configuration:

- Protocol: HTTP
- Port: 80
- Target Type: Instance
- Health Check Enabled

Target Groups:

- demo-app-dev
- demo-app-prod

<img width="1593" height="334" alt="Screenshot 2026-07-30 003651" src="https://github.com/user-attachments/assets/2a338e90-529d-4fe8-a043-62567214b7b4" />


---

## EC2 Infrastructure

Dedicated EC2 instances run application and database workloads.

### Development Environment

- 2 Application Servers
- 1 PostgreSQL Server

### Production Environment

- 2 Application Servers
- 1 PostgreSQL Server

Features:

- Multi-AZ deployment
- Automated provisioning
- Security Groups
- Ansible-managed configuration

<img width="1583" height="375" alt="Screenshot 2026-07-30 003624" src="https://github.com/user-attachments/assets/64816710-a15e-4b54-af00-20facbf40334" />


---

## Technology Stack

- AWS
- Terraform
- Ansible
- Docker
- GitHub
