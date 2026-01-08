# DevOps EKS Flask – End-to-End CI/CD Project

A production-grade DevOps project showcasing automated infrastructure provisioning, secure CI/CD, and Kubernetes deployment on AWS.

This repository demonstrates **real-world DevOps practices**, from infrastructure as code to containerized application deployment using modern cloud-native tools.

---

## What This Project Demonstrates

* End-to-end **CI/CD pipeline** using GitHub Actions
* Secure AWS authentication with **OIDC (no secrets)**
* Infrastructure provisioning with **Terraform**
* Containerized Flask application deployed on **Amazon EKS**
* Clean teardown with full cost awareness

Built as a **portfolio project** to reflect hands-on DevOps and Cloud engineering skills.

---

## Tech Stack

* **Cloud**: AWS (eu-central-1)
* **IaC**: Terraform
* **CI/CD**: GitHub Actions
* **Containers**: Docker
* **Registry**: Amazon ECR
* **Orchestration**: Kubernetes (Amazon EKS)
* **Backend**: Python Flask

---

## Architecture Overview

**Flow:**

1. Developer pushes code to `main`
2. GitHub Actions pipeline starts
3. Docker image is built and tagged with commit SHA
4. Image is pushed to Amazon ECR
5. Kubernetes manifests are applied to EKS
6. Application is deployed via LoadBalancer service

All infrastructure is provisioned and managed via Terraform.

---

## Security & Best Practices

* GitHub Actions authenticates to AWS using **OIDC**
* No AWS access keys stored in GitHub
* Least-privilege IAM roles
* Kubernetes access controlled via `aws-auth`
* Remote Terraform state with **S3 + DynamoDB locking**

---

## Repository Structure

```
.
├── app/                    # Flask application
├── infra/
│   ├── bootstrap/          # Terraform backend (S3 + DynamoDB)
│   └── terraform/          # VPC, EKS, IAM, ECR, OIDC
├── .github/workflows/      # CI/CD pipeline
├── Dockerfile
├── .dockerignore
└── README.md
```

---

## Infrastructure Provisioning

```bash
cd infra/bootstrap
terraform init
terraform apply

cd ../terraform
terraform init
terraform apply
```

---

## Deployment

Deployment is fully automated via GitHub Actions.

Any push to the `main` branch:

* Builds a new Docker image
* Pushes it to ECR
* Updates the running application on EKS

No manual AWS or kubectl authentication required.

---

## Teardown (Cost Safe)

All infrastructure can be removed cleanly:

```bash
terraform destroy
```

Designed with **cost control and cleanup** in mind.

---

## Why This Project

This project was created to demonstrate:

* Practical AWS + Kubernetes experience
* Secure CI/CD design
* Infrastructure ownership end-to-end
* Real DevOps workflows, not toy examples

---

## Author

**Daniel Ilyasov**
DevOps / Cloud Engineer

GitHub: [https://github.com/danielilyasov1](https://github.com/danielilyasov1)

