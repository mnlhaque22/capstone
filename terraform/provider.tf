terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.12.1"
    }
  }
backend "s3" {
    bucket = "capstone-s3"
    key    = "statefile/tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
