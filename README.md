# AWS Infrastructure Provisioning with Terraform

## Project Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform to provision and manage AWS S3 infrastructure.

## Technologies
- AWS S3
- Terraform
- AWS IAM
- Amazon Linux 2023
- Git and GitHub

## Architecture
Terraform runs on an Amazon EC2 instance and communicates with AWS through an attached IAM role.

Terraform Configuration → AWS Provider → IAM Role → Amazon S3

## Implementation
- Installed and configured Terraform
- Configured the AWS provider
- Provisioned an S3 bucket using Terraform
- Applied infrastructure resource tags
- Managed Terraform state
- Validated infrastructure using terraform plan
- Troubleshot AWS IAM permissions
- Recovered an interrupted Terraform deployment

## Terraform Commands

Initialize the project:
    terraform init

Validate configuration:
    terraform validate

Preview infrastructure changes:
    terraform plan

Deploy infrastructure:
    terraform apply

Inspect managed resources:
    terraform state list

Destroy managed infrastructure:
    terraform destroy

## Security
- Uses an EC2 IAM role instead of hardcoded AWS credentials
- Excludes Terraform state files from version control
- Tracks Terraform provider dependencies using .terraform.lock.hcl
- Uses a temporary, bucket-scoped IAM policy for the training lab

## Lessons Learned
Terraform maintains a state file to track infrastructure resources.

AWS IAM permissions must support both resource creation and subsequent read operations.

Terraform can detect configuration drift and reconcile differences between declared and actual infrastructure.
