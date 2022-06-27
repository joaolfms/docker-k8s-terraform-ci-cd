provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      version = "= 3.74.1"
      source  = "hashicorp/aws"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "challenge-devops-coodesh"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
