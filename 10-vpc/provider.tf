terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "daws23d-s3bukcet-online"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "aws23d-table-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}