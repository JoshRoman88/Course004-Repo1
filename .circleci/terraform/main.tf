provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "joshbucket8806"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_instance" "newinstance" {
  ami           = "ami-0c19f80dba70861db"
  instance_type = "t2.micro"
  
}