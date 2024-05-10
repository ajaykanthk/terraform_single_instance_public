terraform {
  required_version = "<= 1.7.5"
  required_providers {
    aws = {
      version = "<=5.48.0"
      source  = "hashicorp/aws"
    }

  }
}

provider "aws" {
  region     = var.aws_region
  
}