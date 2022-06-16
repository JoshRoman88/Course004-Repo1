provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "joshbucket8806"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}