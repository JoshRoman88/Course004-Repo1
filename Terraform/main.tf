terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
  
}

#Using variable ref from variables.tf
provider "aws" {
  region = var.aws_default_region
}

