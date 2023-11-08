terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.24.0"
    }
  }
   backend "s3" {
    bucket = "roboshop-remote-statetf"
    key = "foreach_demo"
    region = "us-east-1"
    dynamodb_table = "roboshop_lock_raghu"
    
  }

  }


provider "aws" {
  # Configuration options
  # you cant give access key and secret key , if you push to github you get mail to delete
  region = "us-east-1"
}