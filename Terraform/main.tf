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