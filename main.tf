terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



resource "aws_s3_bucket" "terraform_lab" {
  bucket_prefix = "zan-terraform-lab-"

  tags = {
    Name        = "terraform-lab-bucket"
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }
}
