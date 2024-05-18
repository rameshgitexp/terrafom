terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"  # Specifies the source of the AWS provider
      version = "~> v1.8.3"       # Specifies the version constraint for the AWS provider
    }
  }
}

provider "aws" {
  region = var.region  # Specifies the AWS region using a variable
}
