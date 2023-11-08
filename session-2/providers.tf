terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # you cant give access key and secret key , if you push to github you get mail to delete
  region = "us-east-1"
}