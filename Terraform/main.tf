provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "joshbucket8806"
    key    = "testingtf.tfstate"
    region = "us-east-1"
  }
}
resource "aws _instance" "Instance-1" {
  ami           = "ami-0c19f80dba70861db"
  instance_type = "t2.micro"
  
}