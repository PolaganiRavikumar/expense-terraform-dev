terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "daws23d-s3bukcet-online"
    key    = "expense-sg"
    region = "us-east-1"
    dynamodb_table = "daws23d-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}