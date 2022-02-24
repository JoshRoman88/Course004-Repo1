provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "local" {
    path = "/Users/josh/Desktop/Repositories/Course004-Repo1/Terraform Testing/local/terraform.tfstate"
  }
}

resource "aws_instance" "Test-free-tier6198800" {

  ami           = "ami-0c19f80dba70861db"
  instance_type = "t2.micro"


  tags = {
    Terraform = "true"

  }
}